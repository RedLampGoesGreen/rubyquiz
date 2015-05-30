require 'test_helper'

class WorkflowTest < ActionDispatch::IntegrationTest

  def category
    @category ||= categories(:one)
  end
  def question
    questions(:additional)
  end

  test 'can update questions of an category' do
    patch_via_redirect category_path(category), id: category.id, category: {question_ids: [question.id]}
    assert_response :ok
    assert_includes category.questions, question
  end
end