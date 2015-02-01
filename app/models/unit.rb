# == Schema Information
#
# Table name: units
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  job_id          :integer          default(1)
#  field_id        :integer
#  type            :string(255)      not null
#  name            :string(255)      not null
#  image           :string(255)
#  str             :integer          default(1)
#  int             :integer          default(1)
#  dex             :integer          default(1)
#  vit             :integer          default(1)
#  luk             :integer          default(1)
#  ego             :integer          default(1)
#  present_hp      :integer          default(400)
#  max_hp          :integer          default(400)
#  condition       :integer          default(0)
#  exp             :integer          default(0)
#  level           :integer          default(1)
#  gold            :integer          default(500)
#  wins            :integer          default(0)
#  continuous_wins :integer          default(0)
#  status_points   :integer          default(4)
#  created_at      :datetime
#  updated_at      :datetime
#

class Unit < ActiveRecord::Base
  belongs_to :user
  belongs_to :job

end
