class LogsController < ApplicationController
  def index
    @glucose = Glucose.all
    @blood_pressure = BloodPressure.all
    @cholesterol = Cholesterol.all
    @client = Client.all
    @length = Length.all
    @medication = Medication.all
    @weight = Weight.all
    @log = Log.all
    @glucose_target = GlucoseTarget.all
    @sight = Sight.all
  end

  def new
    @log = Log.new
  end
  def create
    @log = Log.new (log_params)
    @log.save 
    redirect_to logs_path
  end

  def show
    @hba1c_targets = Hba1cTarget.where(client_id: params[:id])
    @blood_pressure_targets = BloodPressureTarget.where(client_id: params[:id])
    @heartrate_targets = HeartrateTarget.where(client_id: params[:id])
    @cholesterol_targets = CholesterolTarget.where(client_id: params[:id])
    @weight = Weight.new
    @medication = Medication.new
    @glucose = Glucose.new
    @glucose_target = GlucoseTarget.new
    @hba1c = Hba1c.new
    @hba1c_target = Hba1cTarget.new
    @blood_pressure = BloodPressure.new
    @blood_pressure_target = BloodPressureTarget.new
    @heartrate = Heartrate.new
    @heartrate_target = HeartrateTarget.new
    @cholesterol = Cholesterol.new
    @cholesterol_target = CholesterolTarget.new
  end


  private
    def log_params
      params.require(:log).permit(:client_id, :activity_type_id, :start_time, :end_time, :description)
    end
end
