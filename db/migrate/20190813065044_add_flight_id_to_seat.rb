class AddFlightIdToSeat < ActiveRecord::Migration[5.2]
  def change
    add_column :seats, :flight_id, :integer
    add_column :reservations, :user_id, :integer
    add_column :reservations, :flight_id, :integer
    add_column :flights, :airplane_id, :integer
  end
end
