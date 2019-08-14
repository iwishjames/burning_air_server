json.set! :user do
  json.extract! user, :id, :name, :created_at, :updated_at
  json.url user_url(user, format: :json)
  json.set! :flights do
    json.array! @user.reservations do |res|
      json.id res.flight.id
      json.flight_num res.flight.flight_num
      json.date res.flight.date
      json.from res.flight.from
      json.to res.flight.to
      json.airplane_id res.flight.airplane_id
      json.reservation_row res.seat_row
      json.reservation_column res.seat_column
    end
  end
end
