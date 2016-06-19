class ComplaintsController < ApplicationController
  def create
    @complaint = Complaint.new (complaint_params)
    @complaint.save 
    redirect_to client_path(complaint_params[:client_id])
  end
  private   
    def complaint_params
      params.require(:complaint).permit(:author, :function, :description, :title , :client_id, :complain_date)
    end
end
