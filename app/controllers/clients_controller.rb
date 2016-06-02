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

  def edit
    @client = Client.find(params[:id])
  end

  def create 
    @client = Client.new (client_params)
    @client.save 
    redirect_to clients_path
  end
  def show
    @complaint = Complaint.new
    @weight = Weight.new
    @weight_target = WeightTarget.new
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
    @nutrition = Nutrition.new
    @log = Log.new
    @client = Client.find(params[:id])
    @glucoses = Glucose.where(client_id: params[:id]).order('activity_date ASC')
    @hba1c_targets = Hba1cTarget.where(client_id: params[:id])
    @blood_pressure_targets = BloodPressureTarget.where(client_id: params[:id])
    @heartrate_targets = HeartrateTarget.where(client_id: params[:id])
    @cholesterol_targets = CholesterolTarget.where(client_id: params[:id])

    @client_hba1c = Hba1c.where(client_id: params[:id]).order('activity_date DESC').limit(2)
    @heartrates = Heartrate.where(client_id: params[:id]).order('activity_date DESC').limit(2)
    @client_log = Log.where(client_id: params[:id])
    @client_hba1c_target = Hba1cTarget.where(client_id: params[:id]).last
    @client_heartrate_target = HeartrateTarget.where(client_id: params[:id]).last
    @client_glucose_target = GlucoseTarget.where(client_id: params[:id]).last
    @client_cholesterol = Cholesterol.where(client_id: params[:id]).order('activity_date ASC').limit(4)
    @client_blood_pressure = BloodPressure.where(client_id: params[:id]).order('activity_date ASC').limit(10)
    @client_weight = Weight.where(client_id: params[:id]).order('activity_date ASC').limit(10)
    @client_nutrition = Nutrition.where(client_id: params[:id]).order('activity_date ASC')
    @client_complaint = Complaint.where(client_id: params[:id]).order('complain_date ASC')

  end
  private
    def client_params
      params.require(:client).permit(:photo_url, :name, :surname, :date_of_birth, :room, :institution, :blood_type)
    end
end