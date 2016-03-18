require 'test_helper'

class ReportMailerTest < ActionMailer::TestCase
  test "should add message to queue" do
    email = ReportMailer.report_email.deliver_now
    assert_not ActionMailer::Base.deliveries.empty?, "Did not added message to queue"
  end

end
