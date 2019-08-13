class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.text :seat_row
      t.text :seat_column

      t.timestamps
    end
  end
end
