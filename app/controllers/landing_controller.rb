class LandingController < ApplicationController
  def index
  end

  def thanks
  	@answered = false
  	if params[:current_city] != nil
	  	@mover = Mover.new
	  	@mover.current_city = params[:current_city]
	  	@mover.moving_to = params[:moving_to]
	  	@mover.email = params[:email]
			@mover.save
		else
			@mover = Mover.find(params[:id])
			@mover.email = params[:email]
			@mover.save
			@answered = true
		end
  end

  def your_scene
  	@mover = Mover.new
  	@mover.current_city = params[:current_city]
  	@mover.moving_to = params[:moving_to]
		@mover.save

		@your_scene = ""
		@no_scene = false

		denver = ["Skyland", "Park Hill",	"Stapleton",	"Downtown",	"Lincoln Park",	"Whitter"]
		nyc = ["Harlem",	"Brooklyn",	"Manhattan",	"SoHo",	"Greenwich Village",	"East Village"]
		san_diego = ["Hillcrest",	"University Heights",	"Midtown",	"Mission Hills",	"North Park", "Pacific Beach"]
		atlanta = ["West End",	"Inman Park",	"East Atlanta",	"Virginia Highlands",	"Midtown",	"Little 5 Points"]
		portland = ["Downtown",	"Cedar Mill", "Mt. Tabor",	"Gladstone",	"Happy Valley",	"Lake Oswego East"]
		austin = ["Tarrytown",	"Belmont",	"The Triangle",	"Highland Park West",	"Blackland",	"Bouldin"]
		seattle =["West Seattle",	"Magnolia",	"Beacon Hill",	"Cascade",	"Ravenna",	"Rainier-Seward Park"]
		boston = ["Beacon Hill",	"West End",	"Back Bay",	"Charlestown",	"Cambridge",	"Park Square"]
		madison = ["Wirth Court Park",	"Olbrich",	"Starkweather", "Circle Park",	"Evergreen",	"Hawthorne Park"]
		iowa_city = ["Lucas Farms",	"Shimek",	"Washington Hills",	"Friendship",	"Walden Woods",	"Walnut Ridge"]
		arlington = ["Raleigh Court",	"Old Southwest",	"Belmont",	"Washington Park",	"Wildwood",	"Westview Terrace"]


		case @mover.moving_to.downcase
			when "denver"
				@your_scene = denver[rand(denver.length-1)]
			when "new york city" || "new york" || "nyc"
				@your_scene = nyc[rand(nyc.length-1)]
			when "san diego"
				@your_scene = san_diego[rand(san_diego.length-1)]
			when "atlanta"
				@your_scene = atlanta[rand(atlanta.length-1)]
			when "portland"
				@your_scene = portland[rand(portland.length-1)]
			when "austin"
				@your_scene = austin[rand(austin.length-1)]
			when "seattle"
				@your_scene = seattle[rand(seattle.length-1)]
			when "boston"
				@your_scene = boston[rand(boston.length-1)]
			when "madison"
				@your_scene = madison[rand(madison.length-1)]
			when "iowa city"
				@your_scene = iowa_city[rand(iowa_city.length-1)]
			when "arlington"
				@your_scene = arlington[rand(arlington.length-1)]
			else
				@no_scene = true
			end

  end

end
