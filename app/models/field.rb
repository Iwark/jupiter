# == Schema Information
#
# Table name: fields
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Field < ActiveRecord::Base
  has_many :monsters
end
