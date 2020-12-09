class ApplicationMailer < ActionMailer::Base
  default to: "info@healthMe.com", from: 'anastasia@me.com'
  layout 'mailer'
end
