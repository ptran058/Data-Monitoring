class NutritionsController < ApplicationController

  def create
    @nutrition = Nutrition.new(nutrition_params)
    @nutrition.save
    redirect_to client_path(nutrition_params[:client_id])
  end

  def edit
    @nutrition = Nutrition.find(params[:id])
  end

  def update
    @nutrition = Nutrition.find(params[:id])
    @nutrition.update(nutrition_params)
    redirect_to client_path(nutrition_params[:client_id])
  end

  private 
    def nutrition_params
      params.require(:nutrition).permit(:client_id, :activity_date, :quantity)
    end
end