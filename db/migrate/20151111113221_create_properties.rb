class CreateProperties < ActiveRecord::Migration

	def change
		create_table :properties do |t|
			t.integer :user_id
			t.string :description
			t.string :type
			t.string :location
			t.decimal :price
			t.timestamps
		end	
	end
end
