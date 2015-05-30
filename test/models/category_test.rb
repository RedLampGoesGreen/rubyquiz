require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "the name must be present" do
    assert_raise ActiveRecord::RecordInvalid do
      Category.create! category_name: nil
    end
  end
end
