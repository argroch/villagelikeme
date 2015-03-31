class LandingController < ApplicationController
  def index
  end

  def email_collect
  	@mover = Mover.find(params[:id])
  	@mover.interest = params[:interest]
  	@mover.save

  	@no_scene = false
  	city_id = City.where(name: @mover.moving_to.downcase).take
		if city_id.nil?
			@no_scene = true
		end
  end

  def thanks

		def add_email_to_chimp
			@list_id = "527edff245"
			gb = Gibbon::API.new
			gb.lists.subscribe({
				id: @list_id,
				double_optin: false,
				email: {email: @mover.email}
				})
	  end 

		@mover = Mover.find(params[:id])
		@mover.email = params[:email]
		@mover.save
	    if EmailValidator.valid?(@mover.email) 
	    	add_email_to_chimp
	    end
  end

  def your_scene
  	@mover = Mover.new(fave_hood: params[:fave_hood])
  	@mover.current_city = params[:current_city]
  	@mover.full_hood_address= [@mover.fave_hood,@mover.current_city].join(', ')
  	if params[:moving_to].downcase == "nyc" 
  		@mover.moving_to = "New York City"
  	elsif params[:moving_to].downcase == "new york"
  		@mover.moving_to = "New York City"
  	else
  		@mover.moving_to = params[:moving_to]
  	end

		@mover.save
		lon = @mover.longitude
		lat = @mover.latitude
		url = "http://api.walkscore.com/score?format=xml&lat=#{lat}&lon=#{lon}&wsapikey=ffd1c56f9abcf84872116b4cc2dfcf31"
		xml = HTTParty.get(url)
		data = xml.parsed_response
		@fave_walk_score = data['result']['walkscore'].to_i
	    
		@your_scene = ""
		@no_scene = false
		@walk_score_dif=100
	    puts "moving to: #{@mover.moving_to.downcase}"
	    # Doing a case insensitive find requires a weird declaration of an arel table
	    # arel tables are used when regular old active record don't cut it
	    a_table = City.arel_table
		city_id=City.where(a_table[:name].matches(@mover.moving_to.downcase)).take
		
		if city_id.nil?
			@no_scene = true
		else
			puts "**************"
			puts city_id.id
			puts "**************"
			Neighborhood.where(city_id: city_id.id).each do |hood|
				d = @fave_walk_score - hood.walk_score
				puts "fave: #{@fave_walk_score}"
				puts "hood: #{hood.walk_score}"
				puts "d: #{d}"
				puts "lat lon: #{@mover.latitude}"
				if d < 0 
					d = d*(-1) 
				end
				if d < @walk_score_dif
					@your_scene = hood.name
					@walk_score_dif = d
					puts "walk score: #{@walk_score_dif}"
				end
			end
		@mover.suggest_hood = @your_scene
		end
	  @mover.save

	  if @mover.moving_to.include? " "
	  	zillow_city = @mover.moving_to.sub " ", "-"
	  	yelp_city = @mover.moving_to.sub " ", "+"
	  	stub_hub_city = @mover.moving_to.sub " ", "%20"
	  else
	  	zillow_city = @mover.moving_to
	  	yelp_city = @mover.moving_to
	  	stub_hub_hood = @mover.moving_to
	  end

	  if @mover.suggest_hood.include? " "
	  	zillow_hood = @mover.suggest_hood.sub " ", "-"
	  	yelp_hood = @mover.suggest_hood.sub " ", "+"
	  	stub_hub_hood = @mover.suggest_hood.sub " ", "%20"
	  else
	  	zillow_hood = @mover.suggest_hood
	  	yelp_hood = @mover.suggest_hood
	  	stub_hub_hood = @mover.suggest_hood
	  end


	  @zillow_url = "http://www.zillow.com/homes/#{zillow_hood}-#{zillow_city}_rb/"
	  @yelp_url = "http://www.yelp.com/search?find_desc=Restaurants&find_loc=#{yelp_hood}%2C+#{yelp_city}&ns=1"
	  @stub_hub_url = "http://www.stubhub.com/search/doSearch?searchStr=#{stub_hub_hood},%20#{stub_hub_city}&pageNumber=1&resultsPerPage=50&searchMode=event&start=0&rows=50&geo_exp=1"

	  @coordinates = Geocoder.coordinates("#{@mover.suggest_hood}, #{@mover.moving_to}")

	  url = "https://api.foursquare.com/v2/venues/explore?ll=#{@coordinates[0]},#{@coordinates[1]}&client_id=#{ENV['foursquare_id']}&client_secret=#{ENV['foursquare_secret']}&v=20150309&limit=10"
	  response = HTTParty.get(url)
	  @points_of_interest = []
	  response["response"]["groups"].first["items"].each do |venue_info|
	  	poi = Hash.new
	  	poi["Name"] = venue_info["venue"]["name"]
	  	poi["Website"] = venue_info["venue"]["url"]
	  	poi["Rating"] = venue_info["venue"]["rating"]
	  	poi["Latitude"] = venue_info["venue"]["location"]["lat"]
	  	poi["Longitude"] = venue_info["venue"]["location"]["lng"]
	  	poi["Tip"] = venue_info["tips"].first["text"]

	  	poi["Category"] = venue_info["venue"]["categories"].first["name"]
	  	poi["Caticon"] = ""
	  	if poi["Category"].downcase.include? "restaurant"
	  		poi["Caticon"] = '/assets/restaurant1.png'
	  	elsif poi["Category"].downcase.include? "breakfast"
	  		poi["Caticon"] = '/assets/breakfast1.png'
	  	elsif poi["Category"].downcase.include? "coffee"
	  		poi["Caticon"] = '/assets/coffee1.png'
	  	elsif poi["Category"].downcase.include? "ice cream"
	  		poi["Caticon"] = '/assets/ice_cream1.png'
	  	elsif poi["Category"].downcase.include? "museum"
	  		poi["Caticon"] = '/assets/museum1.png'
	  	elsif poi["Category"].downcase.include? "park"
	  		poi["Caticon"] = '/assets/park1.png'
	  	elsif poi["Category"].downcase.include? "club"
	  		poi["Caticon"] = '/assets/club1.png'
	  	elsif poi["Category"].downcase.include? "city"
	  		poi["Caticon"] = '/assets/city1.jpeg'
	  	elsif poi["Category"].downcase.include? "shop"
	  		poi["Caticon"] = '/assets/shop1.png'
	  	elsif poi["Category"].downcase.include? "bar"
	  		poi["Caticon"] = '/assets/club1.png'
	  	elsif poi["Category"].downcase.include? "caf"
	  		poi["Caticon"] = '/assets/coffee1.png'
	  	elsif poi["Category"].downcase.include? "bakery"
	  		poi["Caticon"] = '/assets/bakery1.png'
	  	elsif poi["Category"].downcase.include? "grocery"
	  		poi["Caticon"] = '/assets/grocery1.png'
	  	elsif poi["Category"].downcase.include? "supermarket"
	  		poi["Caticon"] = '/assets/grocery1.png'
	  	elsif poi["Category"].downcase.include? "zoo"
	  		poi["Caticon"] = '/assets/zoo1.png'
	  	elsif poi["Category"].downcase.include? "garden"
	  		poi["Caticon"] = '/assets/garden1.jpeg'
	  	elsif poi["Category"].downcase.include? "yogurt"
	  		poi["Caticon"] = '/assets/ice_cream1.jpeg'
	  	end

	  	@points_of_interest.push(poi)
	  end

	  puts "**************"
	  puts @points_of_interest
	  puts "**************"

  end


  def old_scene
  	@mover = Mover.new(fave_hood: params[:fave_hood])
  	@mover.current_city = params[:current_city]
  	@mover.full_hood_address= [@mover.fave_hood,@mover.current_city].join(', ')
  	if params[:moving_to].downcase == "nyc" 
  		@mover.moving_to = "New York City"
  	elsif params[:moving_to].downcase == "new york"
  		@mover.moving_to = "New York City"
  	else
  		@mover.moving_to = params[:moving_to]
  	end

		@mover.save
		lon = @mover.longitude
		lat = @mover.latitude
		url = "http://api.walkscore.com/score?format=xml&lat=#{lat}&lon=#{lon}&wsapikey=ffd1c56f9abcf84872116b4cc2dfcf31"
		xml = HTTParty.get(url)
		data = xml.parsed_response
		@fave_walk_score = data['result']['walkscore'].to_i
	    
		@your_scene = ""
		@no_scene = false
		@walk_score_dif=100
	    puts "moving to: #{@mover.moving_to.downcase}"
	    # Doing a case insensitive find requires a weird declaration of an arel table
	    # arel tables are used when regular old active record don't cut it
	    a_table = City.arel_table
		city_id=City.where(a_table[:name].matches(@mover.moving_to.downcase)).take
		
		if city_id.nil?
			@no_scene = true
		else
			puts "**************"
			puts city_id.id
			puts "**************"
			Neighborhood.where(city_id: city_id.id).each do |hood|
				d = @fave_walk_score - hood.walk_score
				puts "fave: #{@fave_walk_score}"
				puts "hood: #{hood.walk_score}"
				puts "d: #{d}"
				puts "lat lon: #{@mover.latitude}"
				if d < 0 
					d = d*(-1) 
				end
				if d < @walk_score_dif
					@your_scene = hood.name
					@walk_score_dif = d
					puts "walk score: #{@walk_score_dif}"
				end
			end
		@mover.suggest_hood = @your_scene
		end
	  @mover.save
  end
end
