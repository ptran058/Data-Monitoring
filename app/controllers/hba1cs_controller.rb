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
    redirect_to hba1cs_path
  end

  def edit
    @hba1c = Hba1c.find(params[:id])
  end

  def update
    hba1c = Hba1c.find(params[:id])
    hba1c.update(hba1c_params)
    redirect_to hba1cs_path
  end

  def destroy
    hba1c = Hba1c.find(params[:id])
    hba1c.destroy
    redirect_to hba1cs_path
  end

  private 
    def hba1c_params
      params.require(:hba1c).permit(:activity_date, :mmol)
    end
end