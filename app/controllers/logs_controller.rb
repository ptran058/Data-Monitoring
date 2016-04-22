class LogsController < ApplicationController
  def index
      @log = Log.all
  end

  def new
    @log = Log.new
  end
  def create
    @log = Log.new (log_params)
    @log.save 
    redirect_to logs_path
  end
  private
    def log_params
      params.require(:log).permit(:client_id, :activity_type_id, :start_time, :end_time, :description)
    end
end
