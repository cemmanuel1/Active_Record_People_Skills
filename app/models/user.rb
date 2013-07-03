class User < ActiveRecord::Base
  has_many :skills, :through => :user_skills
  has_many :user_skills
end
