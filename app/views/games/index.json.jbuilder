json.array!(@games) do |game|
  json.extract! game, :id, :level_id
  json.url game_url(game, format: :json)
end
