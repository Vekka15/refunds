require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "test should not create category without name" do
    cat = Category.new
    assert_not cat.save
  end

end
