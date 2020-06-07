class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if booking_slot_is_full?
        format.html { redirect_to doctors_path, alert: 'Sorry, maximum booking slot is exceeded. Please try again later'}
      elsif invalid_booking_time?
        format.html { redirect_to doctors_path, alert: 'Sorry, maximum booking time is 30 minutes before the schedule. Please try again later'}
      elsif @booking.save
        format.html { redirect_to doctors_path, notice: 'Booking was successfully created.' }
      end
    end
  end

  private
    def booking_slot_is_full?
      Schedule.find(@booking.schedule_id).bookings.count >= 10
    end

    def invalid_booking_time?
      seconds_diff = (Schedule.find(@booking.schedule_id).date_start - DateTime.now).to_i.abs
      minutes = seconds_diff / 60
      minutes < 30
    end

    def booking_params
      params.require(:booking).permit(:schedule_id, :patient_name, :email, :phone, :birthdate, :payment_method, :notes)
    end
end
