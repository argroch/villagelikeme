# lib/tasks/delete_bad_cities.rake
namespace :db do
  desc "stuff that needs to be fixed:"
  task :delete_bad_cities => :environment do
	  r = City.all
	  r.each do |city|
		len = Neighborhood.where(city_id: city.id).length
        if len < 2 
			city.destroy
		else
		end
	  end
	end
end