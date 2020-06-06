class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
    @hospitals = Hospital.all
  end

  def create
    @doctor = Doctor.new(doctor_params)
    respond_to do |format|
      if @doctor.save
        format.html { redirect_to doctors_path, notice: 'Doctor was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def doctor_params
      params.require(:doctor).permit(:name, :hospital_id)
    end
end
