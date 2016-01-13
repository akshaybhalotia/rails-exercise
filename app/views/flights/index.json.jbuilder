json.array!(@flights) do |flight|
  json.extract! flight, :id, :from, :to, :date_of_journey, :dep_time, :arr_time, :price
  json.url flight_url(flight, format: :json)
end
