class DriversController < ApplicationController
  def index
    @drivers = Drivers.all 
    render json: @drivers 
  end

  def show
    @driver = Driver.find(params[:id])
    render json: @driver 
  end

  def create
    @driver = Driver.create(driver_params)
    render json: @driver
  end

  def update
    @driver = Driver.find(params[:id])
    @driver.update(driver_params)
    render json: @driver
  end

  def driver_params
    params.permit(:first_name, :last_name, :destination_id)
  end
end