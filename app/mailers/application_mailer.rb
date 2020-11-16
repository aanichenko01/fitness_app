class ApplicationMailer < ActionMailer::Base
  default to: "info@healthMe.com", from: 'info@healthMe.com'
  layout 'mailer'
end
