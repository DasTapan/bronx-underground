require "test_helper"

class EventTest < ActiveSupport::TestCase
  test "event has a creator id" do
    event_four = events(:four)
    assert event_four.creator_id == 3
  end
end
