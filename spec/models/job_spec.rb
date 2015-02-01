# == Schema Information
#
# Table name: jobs
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Job, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
