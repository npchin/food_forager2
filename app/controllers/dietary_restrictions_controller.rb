class DietaryRestrictionsController < ApplicationController

  def index
    @dietary_restrictions = DietaryRestriction.all
  end

  def show
    @dietary_restriction = DietaryRestriction.find_by(id: params[:id])
  end

  def new
    @dietary_restriction = DietaryRestriction.new
  end

  def create
    @dietary_restriction = DietaryRestriction.new
    @dietary_restriction.dietary_notes = params[:dietary_notes]

    if @dietary_restriction.save
      redirect_to dietary_restrictions_url, notice: "Dietary restriction created successfully."
    else
      render 'new'
    end
  end

  def edit
    @dietary_restriction = DietaryRestriction.find_by(id: params[:id])
  end

  def update
    @dietary_restriction = DietaryRestriction.find_by(id: params[:id])
    @dietary_restriction.dietary_notes = params[:dietary_notes]

    if @dietary_restriction.save
      redirect_to dietary_restrictions_url, notice: "Dietary restriction updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @dietary_restriction = DietaryRestriction.find_by(id: params[:id])
    @dietary_restriction.destroy

    redirect_to dietary_restrictions_url, notice: "Dietary restriction deleted."
  end
end
