# lib/tasks/reset_neighborhood_model.rake
namespace :db do
  desc "Sequentially clears out the models I don't care about"
  task :reset_neighborhood_model => :environment do
    puts "Clearing out the Neighborhood model"
    Neighborhood.destroy_all
    puts "Finished."
  end
end