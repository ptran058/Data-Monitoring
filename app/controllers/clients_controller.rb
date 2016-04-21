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
    @log = Log.new
  end
end
