# frozen_string_literal: true

class RequestAppointment < ActiveRecord::Base
  validates :email, presence: true
  validates :code, presence: true
  validates :code, uniqueness: true

  before_validation :generate_code

  def generate_code
    self.code ||= RequestAppointment.unique_code do |code|
      !RequestAppointment.exists?(code: code)
    end
  end

  def self.unique_code(&block)
    code = SecureRandom.hex(10)
    if yield(code)
      code
    else
      RequestAppointment.unique_code(&block)
    end
  end
end
