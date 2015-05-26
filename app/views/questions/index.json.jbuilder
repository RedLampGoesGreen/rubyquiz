json.array!(@questions) do |question|
  json.extract! question, :id, :level_id, :answer_id, :question_text
  json.url question_url(question, format: :json)
end
