class LogsController < ApplicationController

  def create
    @log = Log.new(log_params)
    @log.save 
    redirect_to client_path(log_params[:client_id])
  end

  private
    def log_params
      params.require(:log).permit(:client_id, :activity_type_id, :start_time, :end_time, :description)
    end
end
