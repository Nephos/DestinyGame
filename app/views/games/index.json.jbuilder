json.array!(@games) do |game|
  json.extract! game, :id, :player, :positions
  json.url game_url(game, format: :json)
end
