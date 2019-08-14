json.set! :flight do
  json.extract! flight, :id, :flight_num, :date, :from, :to, :airplane_id, :created_at, :updated_at
  json.airplane Airplane.find @flight.airplane.id
  json.set! :seats do
    json.array! @seats do |seat|
      json.id seat.id
      json.row seat.row
      json.column seat.column
      json.is_taken seat.is_taken
      json.flight_id seat.flight_id
    end
  end
  json.url flight_url(flight, format: :json)
end
