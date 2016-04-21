class SightsController < ApplicationController

  def index
    @sight = Sight.all
  end

  def new
    @sight = Sight.new
  end

  def create
    @sight = Sight.new(params[:sight])
    @sight.save 
    redirect_to sights_path
  end

  def edit
    @sight = Sight.find(params[:id])
  end

  def update
    sight = sight.find(params[:id])
    sight.update(sight_params)
    redirect_to sight_path
  end

  def destroy
    sight = Sight.find(params[:id])
    sight.destroy
    redirect_to sight_path
  end

  private 
    def sight_params
      params.require(:sight).permit(:activity_date, :sight_left, :sight_right, :cilinder_left, :cilinder_right, :reason, :comments, :title, :text)
    end
end
