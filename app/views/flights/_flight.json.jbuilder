json.extract! flight, :id, :flight_num, :date, :from, :to, :airplane_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)
