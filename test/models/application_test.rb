require 'test_helper'

class ApplicationTest < ActiveSupport::TestCase
  test "name should be present" do
    cat = Category.new
    app = Application.new
    app.amount_of_money = 1000.0
    app.category_id = categories(:one).id
    assert_not app.save, "Saved application without name"
  end

  test "amount_of_money should be present" do
    app = Application.new
    app.name = "test"
    app.category_id = categories(:one).id
    assert_not app.save, "Saved application without amount_of_money"
  end

  test "category_id should be present" do
    app = Application.new
    app.name = "test"
    app.amount_of_money = 1000.0
    assert_not app.save, "Saved application without category id"
  end

  test "name should be only letters" do
    app = Application.new
    app.name = 1234
    app.amount_of_money = 1000.0
    app.category_id = categories(:one).id
    assert_not app.save, "Saved application with numerical name"
  end

  test "amount_of_money should be only decimal" do
    app = Application.new
    app.name = 1234
    app.amount_of_money = "abcd"
    app.category_id =categories(:one).id
    assert_not app.save, "Saved application with letters in amount of money"
  end

  test "name should be unique" do
    app1 = Application.new
    app1.name = "Test"
    app1.amount_of_money = 1000.0
    app1.category_id = categories(:one).id
    assert_not app1.save, "Saved application without unique name"
  end

end
