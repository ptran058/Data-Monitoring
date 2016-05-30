class NutritionsController < ApplicationController
  def index
    @nutrition = Nutrition.all
  end

  def new
    @nutrition = Nutrition.new
  end

  def create
    @nutrition = Nutrition.new(nutrition_params)
    @nutrition.save
    redirect_to nutritions_path
  end

  def edit
    @nutrition = Nutrition.find(params[:id])
  end

  def update
    @nutrition = Nutrition.find(params[:id])
    @nutrition.update(nutrition_params)
    redirect_to nutritions_path
  end

  def destroy
    @nutrition = Nutrition.find(params[:id])
    nutrition.destroy
    redirect_to nutritions_path
  end

  private 
    def nutrition_params
      params.require(:nutrition).permit(:client_id, :activity_date, :quantity)
    end
end
