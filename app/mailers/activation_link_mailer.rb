# frozen_string_literal: true

class ActivationLinkMailer < ApplicationMailer
  def send_activation_link(request)
    @email = request.email
    @code = request.code
    subject = 'Car repair appointment activation'
    mail(from: 'Car Repair <noreply@example.com>', to: @email, subject: subject)
  end
end
