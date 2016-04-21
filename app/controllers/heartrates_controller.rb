class HeartratesController < ApplicationController
	  def index
    @heartrate = Heartrate.all
  end

  def new
    @heartrate = Heartrate.new
  end

  def create
    @heartrate = Heartrate.new (heartrate_params)
    @heartrate.save 
    redirect_to heartrates_path
  end

  def edit
    @heartrate = Heartrate.find(params[:id])
  end

  def update
    heartrate = Heartrate.find(params[:id])
    heartrate.update(heartrate_params)
    redirect_to heartrates_path
  end

  def destroy
    heartrate = Heartrate.find(params[:id])
    heartrate.destroy
    redirect_to heartrates_path
  end

  private 
    def heartrate_params
      params.require(:heartrate).permit(:activity_date, :pulse)
    end
end
