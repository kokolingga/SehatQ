require 'rails_helper'

RSpec.describe Hospital, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      hospital = Hospital.new(address: 'Bekasi').save
      expect(hospital).to eq(false)
    end

    it 'ensures address presence' do
      hospital = Hospital.new(name: 'RS Permata Bekasi').save
      expect(hospital).to eq(false)
    end

    it 'should save successfully' do
      hospital = Hospital.new(name: 'RS Permata Bekasi', address: 'Bekasi').save
      expect(hospital).to eq(true)
    end
  end
end
