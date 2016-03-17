require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categories), "Index returned no categories"
  end

  test "should create new cateogry with succes" do
    sign_in User.first
    assert_difference 'Category.count' do
      post :create, category: {name: "abcd", percent: 50}
    end
    assert_redirected_to root_path, "There was wrong redirection"
  end

  test "should create new category without succes" do
    sign_in User.first
    assert_no_difference 'Category.count', "Category was created" do
      post :create, category: {name: 1234, percent: 50}
    end
    assert_template 'new', "There was wrong redirection"
  end

end
