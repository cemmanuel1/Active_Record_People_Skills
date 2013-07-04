class Skill < ActiveRecord::Base
  has_many :users, through: :skill_users
  has_many :skill_users

  validates :name, uniqueness: true

  def user_with_proficiency(level)
    self.skill_users.where(proficiency: level).first.user
  end

end
