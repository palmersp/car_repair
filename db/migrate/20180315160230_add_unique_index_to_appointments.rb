# frozen_string_literal: true

class AddUniqueIndexToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_index :appointments, :code, unique: true
  end
end
