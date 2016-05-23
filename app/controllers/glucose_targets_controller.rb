class GlucoseTargetsController < ApplicationController
  def index
    @glucose_target = GlucoseTarget.all
  end

  def new
    @glucose_target = GlucoseTarget.new
  end

  def create
    @glucose_target = GlucoseTarget.new (glucose_target_params)
    @glucose_target.save
    redirect_to glucose_targets_path
  end

  def edit
    @glucose_target = GlucoseTarget.find(params[:id])
  end

  def update
    @glucose_target = GlucoseTarget.find(params[:id])
    @glucose_target.update(glucose_target_params)
    redirect_to glucose_targets_path 
  end

  def destroy
    @glucose_target = GlucoseTarget.find(params[:id])
    @glucose_target.destroy
    redirect_to glucose_targets_path
  end
  
  private   
    def glucose_target_params
      params.require(:glucose_target).permit(:low, :high, :client_id)
    end
end
