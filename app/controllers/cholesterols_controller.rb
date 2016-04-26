class CholesterolsController < ApplicationController
	def index
    @cholesterol = Cholesterol.all
  end

  def new
    @cholesterol = Cholesterol.new
  end

  def create
    @cholesterol = Cholesterol.new(cholesterol_params)
    @cholesterol.save 
    redirect_to cholesterols_path
  end

  def edit
    @cholesterol = Cholesterol.find(params[:id])
  end

  def update
    cholesterol = Cholesterol.find(params[:id])
    cholesterol.update(cholesterol_params)
    redirect_to cholesterols_path
  end

  def destroy
    cholesterol = Cholesterol.find(params[:id])
    cholesterol.destroy
    redirect_to cholesterols_path
  end

  private 
    def cholesterol_params
      params.require(:cholesterol).permit(:activity_date, :ldl, :hdl, :tryglicerides)
    end
end
