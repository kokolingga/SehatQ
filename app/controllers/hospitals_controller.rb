class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.new(hospital_params)
    respond_to do |format|
      if @hospital.save
        format.html { redirect_to hospitals_path, notice: 'Hospital was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def hospital_params
      params.require(:hospital).permit(:name, :address)
    end
end
