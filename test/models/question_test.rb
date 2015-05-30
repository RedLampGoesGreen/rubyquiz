require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  test "the level_id must be present" do
    assert_raise ActiveRecord::RecordInvalid do
      Question.create! level_id: nil
    end
  end
    test "the question_text must be present" do
    assert_raise ActiveRecord::RecordInvalid do
      Question.create! question_text: nil
    end
  end
    test "the name must be present" do
    assert_raise ActiveRecord::RecordInvalid do
      Question.create! answer_id: nil
    end
  end
end
