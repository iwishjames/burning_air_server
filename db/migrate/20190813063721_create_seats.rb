class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.text :row
      t.text :column
      t.boolean :is_taken

      t.timestamps
    end
  end
end
