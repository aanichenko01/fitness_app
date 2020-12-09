require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "should return contact email" do
    mail = ContactMailer.contact_email("anastasia@me.com",
    "Anastasia Anichenko", "1234567890", @message = "Hello")
    assert_equal ['info@healthMe.com'], mail.to
    assert_equal ['anastasia@me.com'], mail.from
  end
end
