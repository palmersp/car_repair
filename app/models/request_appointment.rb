# frozen_string_literal: true

class RequestAppointment < ActiveRecord::Base
    validates :email, presence: true
    validates :code, presence: true
end
