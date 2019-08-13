class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :flight_num
      t.date :date
      t.text :from
      t.text :to

      t.timestamps
    end
  end
end
