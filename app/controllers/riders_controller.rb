class RidersController < ApplicationController
  def index
    @riders = Rider.all 
    render json: @riders
  end

  def show 
    @rider = Rider.find(params[:id])
    render json: @rider 
  end

  def create
    @rider = Rider.create(rider_params)
    render json: @rider
  end

  def update
    @rider = Rider.find(params[:id])
    @rider.update(rider_params)
    render json: @rider 
  end

  def rider_params
    params.permit(:first_name, :last_name, :driver_id)
  end
end