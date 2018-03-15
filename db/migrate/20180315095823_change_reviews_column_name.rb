# frozen_string_literal: true

class ChangeReviewsColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :appointments_id, :appointment_id
  end
end
