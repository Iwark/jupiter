# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  name                 :string(255)      default(""), not null
#  encrypted_password   :string(255)      default(""), not null
#  remember_created_at  :datetime
#  sign_in_count        :integer          default(0), not null
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  current_character_id :integer
#  created_at           :datetime
#  updated_at           :datetime
#

FactoryGirl.define do
  factory :user do
    
  end

end
