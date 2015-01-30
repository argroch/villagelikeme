class Mover < ActiveRecord::Base

	validates :current_city, :moving_to, :email, presence: true

	validates :email, uniqueness: true

	validates :email, :email_format => { :message => 'is not looking good' }
	
end
