class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :schedule_id
      t.string :patient_name
      t.string :email
      t.string :phone
      t.string :birthdate
      t.string :payment_method
      t.text :notes

      t.timestamps
    end
  end
end
