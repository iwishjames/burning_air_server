# == Schema Information
#
# Table name: reservations
#
#  id          :bigint           not null, primary key
#  seat_row    :text
#  seat_column :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  flight_id   :integer
#

class Reservation < ApplicationRecord
  belongs_to :flight, :optional => true
  belongs_to :user, :optional => true
end
