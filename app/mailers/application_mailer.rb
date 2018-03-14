# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  append_view_path Rails.root.join('app', 'views', 'mailers')
  layout 'mailer'
end
