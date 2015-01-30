class Mover < ActiveRecord::Base

	validates :current_city, :moving_to, :email, presence: true

	validates :email, uniqueness: true
end
