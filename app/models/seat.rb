# == Schema Information
#
# Table name: seats
#
#  id            :bigint           not null, primary key
#  row           :text
#  column        :text
#  is_taken      :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  flight_id     :integer
#  taken_by_user :text
#

class Seat < ApplicationRecord
  belongs_to :flight, :optional => true
end
