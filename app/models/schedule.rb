class Schedule < ApplicationRecord
    belongs_to :doctor

    validates :date_start, presence: true
    validates :date_end, presence: true
    validate :date_end_after_date_start

    private
    def date_end_after_date_start
        return if date_end.blank? || date_start.blank?

        if date_end < date_start
            errors.add(:date_end, "must be after the date_start")
        end
    end
end
