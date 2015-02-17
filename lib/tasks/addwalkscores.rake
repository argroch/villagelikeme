
task :addwalkscores => :environment do
	#r = Neighborhood.all
	# r.each do |x|
	# 	puts x.name
	# end
	#X1-ZWz1ayk4b0m32j_a3t9yj
	hoods = Neighborhood.all
	hoods.each do |n|
	 	lat = n.latitude
	 	lon = n.longitude
		url = "http://api.walkscore.com/score?format=xml&lat=#{lat}&lon=#{lon}&wsapikey=ffd1c56f9abcf84872116b4cc2dfcf31"
	 	xml = HTTParty.get(url)
	 	data = xml.parsed_response
	 	n.walk_score = data['result']['walkscore']
	 	n.save
	 end
	# 	c=City.all

	# 	c.each do |record|
	# 		puts record.name
	# 	end
end