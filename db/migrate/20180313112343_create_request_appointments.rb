# frozen_string_literal: true

class CreateRequestAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :request_appointments do |t|
      t.string :email, null: false
      t.string :code, null: false
      t.timestamps
    end
  end
end
