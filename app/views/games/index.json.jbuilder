json.array!(@games) do |game|
  json.extract! game, :id, :category_id, :Level_id
  json.url game_url(game, format: :json)
end
