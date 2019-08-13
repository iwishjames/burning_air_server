json.extract! flight, :id, :flight_num, :date, :from, :to, :created_at, :updated_at
json.url flight_url(flight, format: :json)
