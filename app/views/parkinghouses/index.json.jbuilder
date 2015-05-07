json.array!(@parkinghouses) do |parkinghouse|
  json.extract! parkinghouse, :id, :name, :address, :description, :image
  json.url parkinghouse_url(parkinghouse, format: :json)
end
