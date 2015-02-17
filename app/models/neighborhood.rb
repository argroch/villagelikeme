class Neighborhood < ActiveRecord::Base
	belongs_to :city
	geocoded_by :associated_address
	before_save :geocode
end