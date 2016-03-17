require 'test_helper'

class CategoryMailerTest < ActionMailer::TestCase
  test "invite" do
    # Send the email, then test that it got queued
    email = CategoryMailer.report_email.deliver_now
    assert_not ActionMailer::Base.deliveries.empty?
  end
end
