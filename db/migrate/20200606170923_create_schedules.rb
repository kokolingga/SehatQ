class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.integer :doctor_id
      t.datetime :date_start
      t.datetime :date_end

      t.timestamps
    end
  end
end
