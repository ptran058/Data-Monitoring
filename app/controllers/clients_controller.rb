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
    @glucoses = Glucose.where(client_id: params[:id])
  end
  private
    def client_params
      params.require(:client).permit(:photo_url, :name, :surname, :date_of_birth, :room, :institution, :blood_type)
    end
end