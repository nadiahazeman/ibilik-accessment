class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	has_many :properties
	has_many :bookings

	validates :email, uniqueness: true,
					  presence: true
	validates :password, presence: true, allow_blank:
	
	def self.authenticate(email,password)

		existing_user = User.find_by(email: email, password: password) || nil
	end					  
end
