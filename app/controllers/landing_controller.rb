class LandingController < ApplicationController
  def index

  	if :current_city != nil
	  	@mover = Mover.new
	  	@mover.current_city = params[:current_city]
	  	@mover.moving_to = params[:moving_to]
	  	@mover.email = params[:email]

	  	@mover.save
	  end

  end

end
