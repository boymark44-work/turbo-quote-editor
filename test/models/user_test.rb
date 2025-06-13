require "test_helper"

class UserTest < ActiveSupport::TestCase

  # Adding a test to our method
  test "name" do
    assert_equal "Accountant", users(:accountant).name      
  end
end
