class User < ActiveRecord::Base
  has_many :skills, through: :skill_users
  has_many :skill_users

  def set_proficiency_for(skill, level)
    user = self.skill_users.where(skill_id: skill.id).first 
    user.update_attributes(proficiency: level)
  end

  def proficiency_for(skill)
   user = self.skill_users.where(skill_id: skill.id).first
   user.blank? ? 0 : user.proficiency 
  end 
  
end

