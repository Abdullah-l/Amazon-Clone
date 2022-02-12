class ApplicationMailer < ActionMailer::Base
  default from: 'notifications@amazon.com'
  layout "mailer"
end
