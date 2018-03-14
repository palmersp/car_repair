# frozen_string_literal: true

class RequestAppointmentsController < ApplicationController
  def create
    request = RequestAppointment.create!(email: params.dig(:request_appointment, :email))
    ActivationLinkMailer.send_activation_link(request)
    redirect_to activation_path
  end
end
