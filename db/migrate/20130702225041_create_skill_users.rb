class CreateSkillUsers < ActiveRecord::Migration
	def change
		create_table :skill_users do |t|
			t.references :skill
			t.references :user
			t.integer 	:proficiency, default: 0
      
			t.timestamps
		end
	end
end
