# frozen_string_literal: true

class AppointmentsController < ApplicationController
  def new
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

    ConfirmationMailer.send_confirmation(appointment)
    ConfirmationMailer.repair_notice(appointment)
    redirect_to success_path
  end
end
