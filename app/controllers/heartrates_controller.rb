class HeartratesController < ApplicationController
  def index
    @heartrate = Heartrate.all
end

  def new
    @heartrate = Heartrate.new
  end

  def create
    @heartrate = Heartrate.new heartrate_params
    @heartrate.save
    redirect_to client_path(heartrate_params[:client_id])
  end

  def edit
    @heartrate = Heartrate.find(params[:id])
  end

  def update
    heartrate = Heartrate.find(params[:id])
    heartrate.update(heartrate_params)
    redirect_to client_path(heartrate_params[:client_id])
  end

  def destroy
    heartrate = Heartrate.find(params[:id])
    heartrate.destroy
    redirect_to client_path(heartrate_params[:client_id])
  end

  private

  def heartrate_params
    params.require(:heartrate).permit(:client_id, :activity_date, :pulse)
  end
end
