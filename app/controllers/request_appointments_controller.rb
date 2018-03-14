# frozen_string_literal: true

class RequestAppointmentsController < ApplicationController
  def create
    RequestAppointment.create!(email: params.dig(:request_appointment, :email))
    redirect_to activation_path
  end
end
