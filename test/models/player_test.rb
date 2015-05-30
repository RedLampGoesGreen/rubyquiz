require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "the player_name must be present" do
    assert_raise ActiveRecord::RecordInvalid do
      Player.create! player_name: nil
    end
  end
    test "the level_id must be present" do
    assert_raise ActiveRecord::RecordInvalid do
      Player.create! player_name: nil
    end
  end
    test "the user_id must be present" do
    assert_raise ActiveRecord::RecordInvalid do
      Player.create! player_name: nil
    end
  end
end
