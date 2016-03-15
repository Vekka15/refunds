require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "test should not create category without name" do
    cat = Category.new
    assert cat.save
  end

end
