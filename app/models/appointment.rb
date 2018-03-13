# frozen_string_literal: true

class Appointment < ActiveRecord::Base
  has_one :review

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :car_year, presence: true
  validates :car_make, presence: true
  validates :car_model, presence: true
  validates :repair_required, presence: true
  validates :appointment_date, presence: true
  validates :email, presence: true
  validates :code, presence: true
end
