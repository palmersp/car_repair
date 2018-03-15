# frozen_string_literal: true

class ConfirmationMailer < ApplicationMailer
  def send_confirmation(appointment)
    @email = appointment.email
    @appointment = appointment
    subject = 'Car repair appointment confirmed'
    mail(from: 'Car Repair <noreply@example.com>', to: @email, subject: subject)
  end

  def repair_notice(appointment, ip_address)
    @appointment = appointment
    @email = appointment.email
    @ip_address = ip_address
    subject = 'New Repair Appointment'
    mail(from: 'Car Repair <repair@example.com>', to: @email, subject: subject)
  end
end
