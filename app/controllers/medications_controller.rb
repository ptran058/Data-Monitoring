class MedicationsController < ApplicationController
  def index
    @medication = Medication.all
  end

  def new
    @medication = Medication.new
  end

  def create
    @medication = Medication.new (medication_params)
    @medication.save 
    redirect_to medications_path
  end

  def edit
    @medication = Medication.find(params[:id])
  end

  def update
    @medication = Medication.find(params[:id])
    @medication.update(medication_params)
    redirect_to medications_path 
  end

  def destroy
    @medication = Medication.find(params[:id])
    @medication.destroy
    redirect_to medications_path
  end

  private 
    def medication_params
      params.require(:medication).permit(:name, :quantity, :type)
    end

end
