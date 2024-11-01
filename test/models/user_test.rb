require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user can have many created events" do
    user_three = users(:three)
    assert user_three.created_events.pluck(:id) == [1,4]
  end
end
