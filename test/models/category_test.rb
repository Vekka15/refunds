require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  test "should not create category without name" do
    cat = Category.new
    cat.percent = 50
    assert_not cat.save, "Saved category without name"
  end

  test "should not create category without percent" do
    cat = Category.new
    cat.name = "abcd"
    assert_not cat.save, "Saved category without percent"
  end

  test "should not create category without proper name" do
    cat = Category.new
    cat.name = 1234
    cat.percent = 50
    assert_not cat.save, "Saved category without letter name"
  end

  test "should not create category without proper percent" do
    cat = Category.new
    cat.name = "abcd"
    cat.percent = "abcd"
    assert_not cat.save, "Saved category without numerical percent"
  end

  test "should not create category with percent more than 100" do
    cat = Category.new
    cat.name = "abcd"
    cat.percent = 110
    assert_not cat.save, "Saved category with percent more than 100"
  end

  test "should not create category with not unique name" do
    cat = Category.new
    cat.name = "Zdrowotne"
    cat.percent = 90
    assert_not cat.save, "Saved category with existing name"
  end

  test "should create proper category" do
    cat = Category.new
    cat.name = "Test"
    cat.percent = 90
    assert cat.save, "Did not saved proper category"
  end



end
