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
  	@mover = Mover.new
  	@mover.fave_hood = params[:fave_hood]
  	@mover.current_city = params[:current_city]
  	@mover.full_hood_address= [@mover.fave_hood,@mover.current_city].join(', ')
  	if params[:moving_to].downcase == "nyc" 
  		@mover.moving_to = "New York City"
  	elsif params[:moving_to].downcase == "new york"
  		@mover.moving_to = "New York City"
  	else
  		@mover.moving_to = params[:moving_to]
  	end
	
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
			d = @fave_walk_score.to_i-hood.walk_score
			d = d*(-1) if d < 0
			if d < @walk_score_dif
				@your_scene = hood.name
				@walk_score_dif = d
			end
		end
	@mover.suggest_hood = @your_scene
	@mover.save
	end
  end

end
