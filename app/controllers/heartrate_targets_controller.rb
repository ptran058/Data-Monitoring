class HeartrateTargetsController < ApplicationController
  def create
    @heartrate_target = HeartrateTarget.new heartrate_target_params
    @heartrate_target.save
    redirect_to client_path(heartrate_target_params[:client_id])
  end

  private

  def heartrate_target_params
    params.require(:heartrate_target).permit(:client_id, :pulse)
  end
end
