class MedicationUsagesController < ApplicationController
  def create
    @medication_usage = MedicationUsage.new(medication_usage_params)
    @medication_usage.save
    redirect_to client_path(medication_usage_params[:client_id])
  end

  private 
    def medication_usage_params
      params.require(:medication_usage).permit(:client_id, :activity_date, :units, :medication_id)
    end
end