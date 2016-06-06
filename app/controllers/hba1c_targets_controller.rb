class Hba1cTargetsController < ApplicationController
  def create
    @hba1c_target = Hba1cTarget.new (hba1c_target_params)
    @hba1c_target.save 
    redirect_to client_path(hba1c_target_params[:client_id])
  end
  private
    def hba1c_target_params
      params.require(:hba1c_target).permit(:client_id, :mmol)
    end
end
