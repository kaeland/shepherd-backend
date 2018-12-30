class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
    render json: @destinations
  end

  def show
    @destination = Destination.find(params[:id])
    render json: @destination
  end

  def create
    @destination = Destination.create(destination_params)
    # byebug 
    render json: @destination
  end

  def destination_params
    params.permit(:name)
  end
end