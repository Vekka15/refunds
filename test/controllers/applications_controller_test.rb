require 'test_helper'

class ApplicationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_nil assigns(:applications)
  end
end
