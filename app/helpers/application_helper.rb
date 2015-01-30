module ApplicationHelper

	def randomized_background_image
	  images = ["assets/brooklyn-cafe.jpg", "assets/berkeley-elmwood.jpg", "assets/atlantic-station.jpg","assets/little-five-points.jpg","assets/neighborhood-pic1.jpg"]
	  images[rand(images.size)]
	end

end
