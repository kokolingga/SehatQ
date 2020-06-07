class SchedulesController < ApplicationController
  def new
    @schedule = Schedule.new
    @doctors = Doctor.all
  end

  def create
    @schedule = Schedule.new(schedule_params)
    respond_to do |format|
      if @schedule.save
        doctor = Doctor.find(@schedule.doctor_id)
        format.html { redirect_to doctor, notice: 'Schedule was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
  def schedule_params
    params.require(:schedule).permit(:doctor_id, :date_start, :date_end)
  end
end
