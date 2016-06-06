class GlucosesController < ApplicationController
  def new
    @glucose = Glucose.new
  end

  def create
    @glucose = Glucose.new (glucose_params)
    @glucose.save 
    redirect_to client_path(glucose_params[:client_id])
  end
  private 
    def glucose_params
      params.require(:glucose).permit(:mmol, :activity_date, :client_id)
    end
end