# frozen_string_literal: true

class ConfirmationMailerPreview < ActionMailer::Preview
  def send_confirmation
    appointment = Appointment.last
    ConfirmationMailer.send_confirmation(appointment)
  end

  def repair_notice
    appointment = Appointment.last
    ip_address = '127.0.0.1'
    ConfirmationMailer.repair_notice(appointment, ip_address)
  end
end