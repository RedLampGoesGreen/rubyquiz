json.array!(@levels) do |level|
  json.extract! level, :id, :level_rank
  json.url level_url(level, format: :json)
end
