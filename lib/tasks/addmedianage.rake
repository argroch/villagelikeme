task :addmedianage => :environment do
	hoods = Neighborhood.all
	 hoods.each do |n|
	 	city = City.where(id: n.city_id).take.name
	 	neighborhood = n.name
		#X1-ZWz1ayk4b0m32j_a3t9y
		url = URI.encode("http://www.zillow.com/webservice/GetDemographics.htm?zws-id=X1-ZWz1ayk4b0m32j_a3t9y&city=#{city}&state=Colorado&neighborhood=#{neighborhood}")
		xml = HTTParty.get(url)
		#@parse = JSON.parse(@json)
		# check out segmentation for blurbs about why we chose that piece
		data = xml.parsed_response
		data['demographics']['response']['pages']['page'].each do |pages|
			 if pages['name'] == 'People'
			 	pages['tables'].each do |table,value|
			 		if value['name']=='People Data'
			 			value['data']['attribute'].each do |attribute|
			 				if attribute['name']=='Median Age'
			 					puts attribute
			 					puts attribute['values']['neighborhood']['value']
			 				end
			 			end
			 		end
			 	end
			 end
		end
	 # if !result puts 'no results for'
  #    else 
	end
end

