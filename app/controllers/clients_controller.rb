class ClientsController < ApplicationController
  def index
    @glucose = Glucose.all
    @client = Client.all
    @length = Length.all
    @medication = Medication.all
    @weight = Weight.all
    @log = Log.all
    @glucose_target = GlucoseTarget.all
    @sight = Sight.all

  end
  def new
    @client = Client.new
  end

  def create 
    @client = Client.new (client_params)
    @client.save 
    redirect_to clients_path
  end
  def show
    @client = Client.find(params[:id])
    @glucose = Glucose.new
    @glucoses = Glucose.where(client_id: params[:id]).order('activity_date ASC')
    @log = Log.where(client_id: params[:id])
    @hba1c_targets = Hba1cTarget.where(client_id: params[:id])
    @blood_pressure_targets = BloodPressureTarget.where(client_id: params[:id])
    @heartrate_targets = HeartrateTarget.where(client_id: params[:id])
    @cholesterol_targets = CholesterolTarget.where(client_id: params[:id])

    @hba1c = Hba1c.where(client_id: params[:id]).order('activity_date DESC').limit(2)
    @heartrate = Heartrate.where(client_id: params[:id]).order('activity_date DESC').limit(2)
    @client_hba1c_target = Hba1cTarget.where(client_id: params[:id]).last
    @client_heartrate_target = HeartrateTarget.where(client_id: params[:id]).last

    @hba1c_target = Hba1cTarget.new
    @blood_pressure_target = BloodPressureTarget.new
    @heartrate_target = HeartrateTarget.new
    @cholesterol_target = CholesterolTarget.new

  end
  private
    def client_params
      params.require(:client).permit(:photo_url, :name, :surname, :date_of_birth, :room, :institution, :blood_type)
    end
end