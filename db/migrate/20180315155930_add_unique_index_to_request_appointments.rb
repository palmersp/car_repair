# frozen_string_literal: true

class AddUniqueIndexToRequestAppointments < ActiveRecord::Migration[5.1]
  def change
    add_index :request_appointments, :code, unique: true
  end
end
