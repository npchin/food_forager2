class EventsController < ApplicationController

  def index
    @events = Event.all.order("updated_at DESC")
    #if params with query /events?sort=location at the end of href 
  end

  def show
    @event = Event.find_by(id: params[:id])
    @user = User.find_by(:id => @event.user_id)
    @food_details = FoodDetail.where(:event_id => @event.id)
  end

  def new
  end

  def create
    @event = Event.new
    @event.user_id = params[:user_id]
    @event.cuisine = params[:cuisine]
    @event.location = params[:location]
    @event.event_photo = params[:event_photo]


    if @event.save
      redirect_to events_url, notice: "Event created successfully."
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find_by(id: params[:id])
  end

  def update
    @event = Event.find_by(id: params[:id])
    @event.user_id = params[:user_id]
    @event.cuisine = params[:cuisine]
    @event.location = params[:location]


    if @event.save
      redirect_to events_url, notice: "Event updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy

    redirect_to events_url, notice: "Event deleted."
  end
end
