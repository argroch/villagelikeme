class LandingController < ApplicationController
  def index
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
    
	city_id=City.where(name: @mover.moving_to.downcase).take
	
	if city_id.nil?
		@no_scene = true
	else
		Neighborhood.where(city_id: city_id.id).each do |hood|
			d = @fave_walk_score-hood.walk_score
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
