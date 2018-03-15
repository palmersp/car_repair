# frozen_string_literal: true

class ActivationLinkMailerPreview < ActionMailer::Preview
  def send_activation_link
    request = RequestAppointment.last
    ActivationLinkMailer.send_activation_link(request)
  end
end