# == Schema Information
#
# Table name: characters
#
#  id              :integer          not null, primary key
#  user_id         :integer          not null
#  job_id          :integer          default(1)
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
#  type            :string(255)      not null
#  created_at      :datetime
#  updated_at      :datetime
#

FactoryGirl.define do
  factory :character do
    user nil
job nil
name "MyString"
image "MyString"
str 1
int 1
dex 1
vit 1
luk 1
ego 1
present_hp 1
max_hp 1
condition 1
exp 1
level 1
gold 1
wins 1
continuous_wins 1
status_points 1
  end

end
