class WeightsController < ApplicationController
  def index
    @weight = Weight.all
  end

  def new
    @weight = Weight.new
  end

  def create
    @weight = Weight.new(weight_params)
    @weight.save
    redirect_to client_path(weight_params[:client_id])
  end

  def edit
    @weight = Weight.find(weight_params[:client_id])
  end

  def update
    weight = Weight.find(params[:id])
    weight.update(weight_params)
    redirect_to client_path(weight_params[:client_id])
  end

  def destroy
    weight = Weight.find(params[:id])
    weight.destroy
    redirect_to client_path(weight_params[:client_id])
  end

  private

  def weight_params
    params.require(:weight).permit(:weight, :activity_date, :client_id)
  end
end
