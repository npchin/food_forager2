class FoodDetailsController < ApplicationController

  def index
    @food_details = FoodDetail.all
  end

  def show
    @food_detail = FoodDetail.find_by(id: params[:id])
  end

  def new
  end

  def create
    @food_detail = FoodDetail.new
    @food_detail.event_id = params[:event_id]
    @food_detail.dietary_restrictions_id = params[:dietary_restrictions_id]
    @food_detail.quantity = params[:quantity]

    if @food_detail.save
      redirect_to food_details_url, notice: "Food detail created successfully."
    else
      render 'new'
    end
  end

  def edit
    @food_detail = FoodDetail.find_by(id: params[:id])
  end

  def update
    @food_detail = FoodDetail.find_by(id: params[:id])
    @food_detail.event_id = params[:event_id]
    @food_detail.dietary_restrictions_id = params[:dietary_restrictions_id]
    @food_detail.quantity = params[:quantity]

    if @food_detail.save
      redirect_to food_details_url, notice: "Food detail updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @food_detail = FoodDetail.find_by(id: params[:id])
    @food_detail.destroy

    redirect_to food_details_url, notice: "Food detail deleted."
  end
end
