require 'rails_helper'

RSpec.describe Doctor, type: :model do
  before {@hospital = Hospital.create(name: 'RS Permata Bekasi', address: 'Bekasi')}

  context 'validation tests' do
    it 'ensure name presence' do
      # doctor = @hospital.doctors.new(hospital_id: @hospital.id).save
      doctor = @hospital.doctors.new().save
      expect(doctor).to eq(false)
    end

    it 'ensure hospital presence' do
      doctor = Doctor.new(name: 'Koko').save
      expect(doctor).to eq(false)
    end

    it 'should save successfully' do
      doctor = @hospital.doctors.new(name:'Koko', hospital_id: @hospital.id).save
      expect(doctor).to eq(true)
    end
  end
end
