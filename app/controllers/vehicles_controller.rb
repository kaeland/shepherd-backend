class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
    render json: @vehicles
  end

  def show
    @vehicle = Vehicle.find(params[:id])
    render json: @vehicle 
  end

  def create
    @vehicle = Vehicle.create(vehicle_params)
    render json: @vehicle
  end

  def update 
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(vehicle_params)
    render json: @vehicle
  end

  def vehicle_params
    params.permit(:color, :make, :model, :driver_id)
  end
end