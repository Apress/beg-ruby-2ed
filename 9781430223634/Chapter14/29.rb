require 'rubygems'
require 'action_mailer'

class Emailer < ActionMailer::Base
  def test_email(email_address, email_body)
    recipients(email_address)
    from "me@privacy.net"
    subject "This is a test e-mail"
    body email_body
  end
end 

Emailer.deliver_test_email('me@privacy.net', 'This is a test e-mail!')

