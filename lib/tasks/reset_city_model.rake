# lib/tasks/reset_neighborhood_model.rake
namespace :db do
  desc "Sequentially clears out all entries in the City model"
  task :reset_city_model => :environment do
    puts "Clearing out the City model"
    City.destroy_all
    puts "Finished."
  end
end