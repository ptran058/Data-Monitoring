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
    redirect_to client_path(1)
  end

  def edit
    @cholesterol = Cholesterol.find(params[:id])
  end

  def update
    cholesterol = Cholesterol.find(params[:id])
    cholesterol.update(cholesterol_params)
    redirect_to client_path(1)
  end

  def destroy
    cholesterol = Cholesterol.find(params[:id])
    cholesterol.destroy
    redirect_to client_path(1)
  end

  private 
    def cholesterol_params
      params.require(:cholesterol).permit(:client_id, :activity_date, :ldl, :hdl, :triglycerides)
    end
end
