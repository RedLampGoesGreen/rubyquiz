json.array!(@players) do |player|
  json.extract! player, :id, :player_name, :level_id
  json.url player_url(player, format: :json)
end
