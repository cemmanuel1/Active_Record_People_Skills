class CreateUserSkills < ActiveRecord::Migration
	def change
		create_table :user_skills do |t|
			t.reference :skill
			t.reference :user 	
			t.integer 	:proficiency, default: 0
			t.timestamps
		end
	end
end
