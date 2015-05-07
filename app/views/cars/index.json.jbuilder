json.array!(@cars) do |car|
  json.extract! car, :id, :plate, :lastvisit, :allvisit, :parkinghouse_id
  json.url car_url(car, format: :json)
end
