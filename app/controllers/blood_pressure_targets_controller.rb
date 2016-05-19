class BloodPressureTargetsController < ApplicationController
  def create
    @blood_pressure_target = BloodPressureTarget.new (blood_pressure_target_params)
    @blood_pressure_target.save 
    redirect_to clients_path
  end
  private
    def blood_pressure_target_params
      params.require(:blood_pressure_target).permit(:client_id, :sys, :dia)
    end

end
