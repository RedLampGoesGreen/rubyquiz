require 'test_helper'

class LevelTest < ActiveSupport::TestCase
  test "the level rank must be present" do
    assert_raise ActiveRecord::RecordInvalid do
      Level.create! level_rank: nil
    end
  end
end
