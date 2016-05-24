class WeightTargetsController < ApplicationController
  def index
    @weight_target = WeightTarget.all
  end

  def new
    @weight_target = WeightTarget.new
  end

  def create
    @weight_target = WeightTarget.new (weight_target_params)
    @weight_target.save
    redirect_to weight_targets_path
  end

  def edit
    @weight_target = WeightTarget.find(params[:id])
  end

  def update
    @weight_target = WeightTarget.find(params[:id])
    @weight_target.update(weight_target_params)
    redirect_to weight_targets_path 
  end

  def destroy
    @weight_target = WeightTarget.find(params[:id])
    @weight_target.destroy
    redirect_to weight_targets_path
  end
  
  private   
    def weight_target_params
      params.require(:weight_target).permit(:min_weight, :max_weight, :client_id)
    end
end
