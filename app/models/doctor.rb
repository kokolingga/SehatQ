class Doctor < ApplicationRecord
    belongs_to :hospital
    has_many :schedules

    validates :name, presence: true
    validates :hospital_id, presence: true
end
