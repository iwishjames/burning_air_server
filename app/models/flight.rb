# == Schema Information
#
# Table name: flights
#
#  id          :bigint           not null, primary key
#  flight_num  :integer
#  date        :date
#  from        :text
#  to          :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  airplane_id :integer
#

class Flight < ApplicationRecord
  belongs_to :airplane, :optional => true
  has_many :seats
  has_many :reservations
end
