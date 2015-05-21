json.array!(@questions) do |question|
  json.extract! question, :id, :question_text, :level_id, :category_id
  json.url question_url(question, format: :json)
end
