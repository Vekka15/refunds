require 'test_helper'

class ApplicationsControllerTest < ActionController::TestCase
  test "should get index when there is session" do
    sign_in User.first
    get :index
    assert_response :success
    assert_not_nil assigns(:applications), "Index returned no applications"
  end

  test "should get index when there is no session" do
    get :index
    assert_nil assigns(:applications), "Index returned applications "
    assert_redirected_to new_user_session_path, "There was now redirection to login page"
  end
end
