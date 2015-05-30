require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  test "the answer can't be empty" do
    assert_raise ActiveRecord::RecordInvalid do
      Answer.create! answer_text: nil
    end
  end
end
