class Mover < ActiveRecord::Base
	geocoded_by :full_hood_address
	after_initialize :geocode
end
