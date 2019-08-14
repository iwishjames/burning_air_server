class AddTakenByUserToSeats < ActiveRecord::Migration[5.2]
  def change
    add_column :seats, :taken_by_user, :text
  end
end
