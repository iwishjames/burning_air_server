# == Schema Information
#
# Table name: seats
#
#  id         :bigint           not null, primary key
#  row        :text
#  column     :text
#  is_taken   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Seat < ApplicationRecord
  belongs_to :flight, :optional => true
end
