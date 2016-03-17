require 'test_helper'

class ReportMailerTest < ActionMailer::TestCase
  test "should add message to queue" do
    # Send the email, then test that it got queued
    email = ReportMailer.report_email.deliver_now
    assert_not ActionMailer::Base.deliveries.empty?
  end
end
