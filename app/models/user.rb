# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  is_admin   :boolean
#

class User < ApplicationRecord
  has_many :reservations
end
