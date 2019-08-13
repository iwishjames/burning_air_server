json.extract! seat, :id, :row, :column, :is_taken, :created_at, :updated_at
json.url seat_url(seat, format: :json)
