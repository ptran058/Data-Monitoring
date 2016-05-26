class BloodPressuresController < ApplicationController
	  def index
    @blood_pressure = BloodPressure.all
  end

  def new
    @blood_pressure = BloodPressure.new
  end

  def create
    @blood_pressure = BloodPressure.new(blood_pressure_params)
    @blood_pressure.save 
    redirect_to client_path(1)
  end

  def edit
    @blood_pressure = BloodPressure.find(params[:id])
  end

  def update
    blood_pressure = BloodPressure.find(params[:id])
    blood_pressure.update(blood_pressure_params)
    redirect_to client_path(1)
  end

  def destroy
    blood_pressure = BloodPressure.find(params[:id])
    blood_pressure.destroy
    redirect_to client_path(1)
  end

  private 
    def blood_pressure_params
      params.require(:blood_pressure).permit(:client_id, :activity_date, :sys, :dia)
    end
end