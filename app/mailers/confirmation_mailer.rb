# frozen_string_literal: true

class ConfirmationMailer < ApplicationMailer
  def send_confirmation(appointment)
    @email = appointment.email
    @code = appointment.code
    subject = 'Car repair appointment confirmed'
    mail(from: 'Car Repair <noreply@example.com>', to: @email, subject: subject)
  end

  def repair_notice(appointment)
    @email = appointment.email
    @code = appointment.code
    subject = 'New Repair Appointment'
    mail(from: 'Car Repair <repair@example.com>', to: @email, subject: subject)
  end
end
