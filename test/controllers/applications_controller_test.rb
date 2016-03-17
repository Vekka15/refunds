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
    assert_redirected_to new_user_session_path, "There was no redirection to login page"
  end

  test "should sign false to application acceptance" do
    put(:reject, {'format' => applications(:one).id})
    assert_equal false, Application.find(applications(:one).id).acceptance, "Did not set acceptance to false"
    assert_redirected_to root_path, "There was wrong redirection"
  end

  test "should create new applications with succes" do
    sign_in User.first
    assert_difference 'Application.count' do
      post :create, application: {name: "abcd", amount_of_money: 1000, category_id: categories(:one).id}
    end
    assert_redirected_to root_path, "There was wrong redirection"
  end

  test "should create new applications without succes" do
    sign_in User.first
    assert_no_difference 'Application.count', "Application was created" do
      post :create, application: {name: 1234, amount_of_money: 1000, category_id: categories(:one).id}
    end
    assert_template 'new', "There was wrong redirection"
  end


end
