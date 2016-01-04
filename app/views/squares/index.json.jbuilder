json.array!(@squares) do |square|
  json.extract! square, :id, :position, :title, :description, :image
  json.url square_url(square, format: :json)
end
