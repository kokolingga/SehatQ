class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    respond_to do |format|
      if @booking.save
        format.html { redirect_to doctors_path, notice: 'Booking was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:schedule_id, :patient_name, :email, :phone, :birthdate, :payment_method, :notes)
    end
end
