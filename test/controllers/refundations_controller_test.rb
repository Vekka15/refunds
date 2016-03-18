require 'test_helper'

class RefundationsControllerTest < ActionController::TestCase

  test "should create new refundation when application is accepted" do
    sign_in User.first
    assert_difference 'Refundation.count' do
      post(:accept, {format: applications(:one).id})
    end
    assert_redirected_to root_path, "There was wrong redirection"
  end
  
end
