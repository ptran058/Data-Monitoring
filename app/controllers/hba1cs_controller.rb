class Hba1csController < ApplicationController
	def index
    @hba1c = Hba1c.all
  end

  def new
    @hba1c = Hba1c.new
  end

  def create
    @hba1c = Hba1c.new(hba1c_params)
    @hba1c.save 
    redirect_to client_path(1)
  end

  def edit
    @hba1c = Hba1c.find(params[:id])
  end

  def update
    hba1c = Hba1c.find(params[:id])
    hba1c.update(hba1c_params)
    redirect_to client_path(1)
  end

  def destroy
    hba1c = Hba1c.find(params[:id])
    hba1c.destroy
    redirect_to client_path(1)
  end

  private 
    def hba1c_params
      params.require(:hba1c).permit(:client_id, :activity_date, :mmol)
    end
end