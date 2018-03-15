# frozen_string_literal: true

class RequestAppointment < ActiveRecord::Base
  validates :email, presence: true
  validates :code, presence: true

  before_validation :generate_code

  def generate_code
    self.code ||= SecureRandom.hex(10)
  end
end
