class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by(id: params[:id])
  end

  def new
  end

  def create
    @event = Event.new
    @event.user_id = params[:user_id]
    @event.cuisine = params[:cuisine]
    @event.location = params[:location]
    @event.event_date = params[:event_date]

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
    @event.event_date = params[:event_date]

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
