# frozen_string_literal: true

class AppointmentsController < ApplicationController
  def new
    redirect_to review_path(code: params.fetch(:code)) if Appointment.exists?(code: params.fetch(:code))
    @code = params.fetch(:code)
    @email = RequestAppointment.find_by(code: @code).email
  end

  def create
    appointment = Appointment.create!(
      first_name: params.dig(:appointment, :first_name),
      last_name: params.dig(:appointment, :last_name),
      phone_number: params.dig(:appointment, :phone_number),
      car_year: params.dig(:appointment, :car_year),
      car_make: params.dig(:appointment, :car_make),
      car_model: params.dig(:appointment, :car_model),
      repair_required: params.dig(:appointment, :repair_required),
      appointment_date: params.dig(:appointment, :appointment_date),
      code: params.dig(:appointment, :code),
      email: params.dig(:appointment, :email)
    )
    ip_address = request.remote_ip
    ConfirmationMailer.send_confirmation(appointment)
    ConfirmationMailer.repair_notice(appointment, ip_address)
    redirect_to success_path
  end
end
