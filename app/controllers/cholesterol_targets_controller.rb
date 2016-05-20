class CholesterolTargetsController < ApplicationController
  def create
    @cholesterol_target = CholesterolTarget.new (cholesterol_target_params)
    @cholesterol_target.save 
    redirect_to clients_path
  end
  private
    def cholesterol_target_params
      params.require(:cholesterol_target).permit(:client_id, :ldl, :hdl)
    end
end
