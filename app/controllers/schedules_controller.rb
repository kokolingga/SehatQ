class SchedulesController < ApplicationController
  before_action :get_doctor
  before_action :set_schedule, only: [:show]

  # def index
  #   @schedules = @doctor.schedules
  # end

  def show
    @booking = @schedule.bookings.build
  end

  def new
    # @schedule = Schedule.new
    # @doctors = Doctor.all

    @schedule = @doctor.schedules.build
  end

  def create
    @schedule = @doctor.schedules.build(schedule_params)
        respond_to do |format|
         if @schedule.save
            format.html { redirect_to doctor_path(@doctor), notice: 'Schedule was successfully created.' }
         else
            format.html { render :new }
      end
    end



    # @schedule = Schedule.new(schedule_params)
    # respond_to do |format|
    #   if @schedule.save
    #     doctor = Doctor.find(@schedule.doctor_id)
    #     format.html { redirect_to doctor, notice: 'Schedule was successfully created.' }
    #   else
    #     format.html { render :new }
    #   end
    # end
  end

  private
    def set_schedule
      # @schedule = Schedule.find(params[:id])
      @schedule = @doctor.schedules.find(params[:id])
    end

    def get_doctor
      @doctor = Doctor.find(params[:doctor_id])
    end

    def schedule_params
      params.require(:schedule).permit(:doctor_id, :date_start, :date_end)
    end
end
