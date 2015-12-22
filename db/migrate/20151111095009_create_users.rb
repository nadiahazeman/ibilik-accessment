class CreateUsers < ActiveRecord::Migration

	def change
		create_table :users do |t|
			t.string :fullname
			t.string :email
			t.string :password
			t.integer :booking_id
			t.timestamps
		end	
	end
end
