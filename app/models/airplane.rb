# == Schema Information
#
# Table name: airplanes
#
#  id         :bigint           not null, primary key
#  rows       :integer
#  columns    :integer
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airplane < ApplicationRecord
  has_many :flights
end
