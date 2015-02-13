# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cities = City.create([{ name: 'Denver'}, { name: "New York City"}, { name: "San Diego"}, { name: "Atlanta"}, { name: "Portland"}, { name: "Austin"}, { name: "Seattle"}, { name: "Boston"}], { name: "Madison"}, { name: "Arlington"})

# 10 cities

neighborhoods = Neighbhood.create([{ name: 'Midtown' , city_id: 4 }], [{}], [{}])