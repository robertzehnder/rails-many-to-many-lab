class AppointmentsController < ApplicationController
  def index
    if params[:doctor_id]
      @user = Doctor.find(params[:doctor_id])
      @type = "doctor"
    elsif params[:patient_id]
      @user = Patient.find(params[:patient_id])
      @type = "patient"
    end
  end

  def new
    if params[:doctor_id]
      @user = Doctor.find(params[:doctor_id])
      @type = "Doctor"
    elsif params[:patient_id]
      @user = Patient.find(params[:patient_id])
      @type = "Patient"
    end
  end
end
