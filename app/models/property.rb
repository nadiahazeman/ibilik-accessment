class Property < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :user
	has_many :bookings
	has_many :comments

	validates :description, presence: true
end
