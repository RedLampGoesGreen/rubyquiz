json.array!(@games) do |game|
  json.extract! game, :id, :question_id, :level_id, :wrong_answer, :player_id, :category_id
  json.url game_url(game, format: :json)
end
