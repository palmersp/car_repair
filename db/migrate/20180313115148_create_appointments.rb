class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :phone_number, null: false
      t.integer :car_year, null: false
      t.string :car_make, null: false
      t.string :car_model, null: false
      t.string :repair_required, null: false
      t.datetime :appointment_date, null: false
      t.string :email, null: false
      t.string :code, null: false
      t.timestamps
    end
  end
end
