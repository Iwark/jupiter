# == Schema Information
#
# Table name: jobs
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :job do
    name "MyString"
  end

end
