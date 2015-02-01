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

class Character < Unit

  validates :user_id, presence: true
  validates :name, presence: true, length:{ minimum: 3, maximum: 8 }
  
  validate :user_can_increase_characters
  after_create :set_current_character

  # キャラクター数の制限を超えていないかどうか
  def user_can_increase_characters
    user = User.find(user_id)
    if !user || user.characters.count > 0
      errors.add(:user_id, "cannot create more characters")
    end
  end

  def set_current_character
    user = User.find(user_id)
    if !user.current_character_id
      user.update(current_character_id: id)
    end
  end

end
