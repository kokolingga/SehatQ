require 'rails_helper'

RSpec.describe Schedule, type: :model do
  before {
    @hospital = Hospital.create(name: 'RS Permata Bekasi', address: 'Bekasi')
    @doctor = @hospital.doctors.create(name:'Koko', hospital_id: @hospital.id)
  }

  context 'validation tests' do
    it 'ensure date_start presence' do
      schedule = @doctor.schedules.new(date_end: DateTime.now).save
      expect(schedule).to eq(false)
    end
  
    it 'ensure date_end presence' do
      schedule = @doctor.schedules.new(date_start: DateTime.now).save
      expect(schedule).to eq(false)
    end
  
    it 'ensure date_end is greater than date_start' do
      schedule = @doctor.schedules.new(date_start: DateTime.now + 10.days, date_end: DateTime.now).save
      expect(schedule).to eq(false)
    end
  
    it 'should save successfully' do
      schedule = @doctor.schedules.new(date_start: DateTime.now, date_end: DateTime.now).save
      expect(schedule).to eq(true)
    end  
  end
end
