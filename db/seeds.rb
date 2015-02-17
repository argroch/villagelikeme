# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 10 cities
cities = City.create([{ name: 'denver'}, 
	                  { name: 'new york city'}, 
	                  { name: 'san diego'}, 
	                  { name: 'atlanta'}, 
	                  { name: 'portland'}, 
	                  { name: 'austin'}, 
	                  { name: 'seattle'}, 
	                  { name: 'boston'}, 
	                  { name: 'madison'}, 
	                  { name: 'arlington'}])

#Denver
neighborhoods = Neighborhood.create([{ name: 'City Park West' , city_id: 1 , associated_address: 'City Park West, Denver'}, 
	                               { name: 'Civic Center' , city_id: 1 , associated_address: 'Civic Center, Denver'}, 
	                               { name: 'Lincoln Park' , city_id: 1 , associated_address: 'Lincoln Park, Denver' }, 
	                               { name: 'Hilltop' , city_id: 1 , associated_address: 'Hilltop, Denver' }, 
	                               { name: 'Indian Creek' , city_id: 1 , associated_address: 'Indian Creek, Denver' }, 
	                               { name: 'North Park Hill' , city_id: 1 , associated_address: 'North Park Hill, Denver' }, 
	                               { name: 'South Park Hill' , city_id: 1 , associated_address: 'South Park Hill, Denver' }, 
	                               { name: 'Lowry' , city_id: 1 , associated_address: 'Lowry, Denver' }, 
	                               { name: 'Montbello' , city_id: 1 , associated_address: 'Montbello, Denver' }, 
	                               { name: 'Northeast Park Hill' , city_id: 1 , associated_address: 'Northeast Park Hill, Denver' }, 
	                               { name: 'Stapleton' , city_id: 1 , associated_address: 'Stapleton, Denver' }, 
	                               { name: 'Highland' , city_id: 1 , associated_address: 'Highland, Denver'}, 
	                               { name: 'Jefferson Park' , city_id: 1 , associated_address: 'Jefferson Park, Denver' }, 
	                               { name: 'Regis' , city_id: 1 , associated_address: 'Regis, Denver' }, 
	                               { name: 'Sloan Lake' , city_id: 1 , associated_address: 'Sloan Lake, Denver' }, 
	                               { name: 'Country Club' , city_id: 1 , associated_address: 'Country Club, Denver' }])

#NYC
neighborhoods = Neighborhood.create([{ name: 'Soho' , city_id: 2 , associated_address: 'Soho, New York City' }, 
	                               { name: 'Brooklyn' , city_id: 2 , associated_address: 'Brooklyn, New York City' }, 
	                               { name: 'Midtown' , city_id: 2 , associated_address: 'Midtown, New York City' }, 
	                               { name: 'Upper West Side' , city_id: 2 , associated_address: 'Upper West Side, New York City' }, 
	                               { name: 'East Harlem' , city_id: 2 , associated_address: 'East Harlem, New York City' }, 
	                               { name: 'East Village' , city_id: 2 , associated_address: 'East Village, New York City' }, 
	                               { name: 'Greenwich Village' , city_id: 2 , associated_address: 'Greenwich Village, New York City' }, 
	                               { name: 'Uper East Side' , city_id: 2 , associated_address: 'Uper East Side, New York City' }, 
	                               { name: 'Gramercy Park' , city_id: 2 , associated_address: 'Gramercy Park, New York City' }, 
	                               { name: 'Tribeca' , city_id: 2 , associated_address: 'Tribeca, New York City' }, 
	                               { name: 'Chinatown' , city_id: 2 , associated_address: 'Chinatown, New York City' }, 
	                               { name: 'Times Square' , city_id: 2 , associated_address: 'Times Square, New York City' }, 
	                               { name: 'Rose Hill' , city_id: 2 , associated_address: 'Rose Hill, New York City' }, 
	                               { name: 'Little Italy' , city_id: 2 , associated_address: 'Little Italy, New York City' }, 
	                               { name: 'Downtown Manhattan' , city_id: 2 , associated_address: 'Downtown Manhattan, New York City' }, 
	                               { name: 'Turtle Bay' , city_id: 2 , associated_address: 'Turtle Bay, New York City' }, 
	                               { name: 'Theater District' , city_id: 2 , associated_address: 'Theater District, New York City' }, 
	                               { name: 'Diamond District' , city_id: 2 , associated_address: 'Diamond District, New York City' }])


#San Diego
neighborhoods = Neighborhood.create([{ name: 'Midtown' , city_id: 3, associated_address: 'Midtown, San Diego' }, 
	                               { name: 'Old Town' , city_id: 3, associated_address: 'Old Town, San Diego'  }, 
	                               { name: 'Palm City' , city_id: 3, associated_address: 'Palm City, San Diego'  }, 
	                               { name: 'Sorrento Mesa' , city_id: 3, associated_address: 'Sorrento Mesa, San Diego'  }, 
	                               { name: 'Alta Vista' , city_id: 3, associated_address: 'Alta Vista, San Diego'  }, 
	                               { name: 'Mountain View' , city_id: 3, associated_address: 'Mountain View, San Diego'  }, 
	                               { name: 'Columbia' , city_id: 3, associated_address: 'Columbia, San Diego' }, 
	                               { name: 'Core' , city_id: 3, associated_address: 'Core, San Diego'  }, 
	                               { name: 'Cortez Hill' , city_id: 3, associated_address: 'Cortez Hill, San Diego'  }, 
	                               { name: 'East Village' , city_id: 3, associated_address: 'East Village, San Diego' }, 
	                               { name: 'Little Italy' , city_id: 3, associated_address: 'Little Italy, San Diego' }, 
	                               { name: 'Mission Hills' , city_id: 3, associated_address: 'Mission Hills, San Diego'  }, 
	                               { name: 'Redwood Village' , city_id: 3, associated_address: 'Redwood Village, San Diego'  }, 
	                               { name: 'Del Cerro' , city_id: 3, associated_address: 'Del Cerro, San Diego'  }, 
	                               { name: 'Midway' , city_id: 3, associated_address: 'Midway, San Diego'  }, 
	                               { name: 'Ocean Beach' , city_id: 3, associated_address: 'Ocean Beach, San Diego'  }, 
	                               { name: 'Sherman Heights' , city_id: 3, associated_address: 'Sherman Heights, San Diego'  }, 
	                               { name: 'Torrey Highlands' , city_id: 3, associated_address: 'Torrey Highlands, San Diego'  }])


#Atlanta
neighborhoods = Neighborhood.create([{ name: 'Midtown' , city_id: 4, associated_address: 'Midtown, Atlanta'}, 
	                               { name: 'Loring Heights' , city_id: 4, associated_address: 'Loring Heights, Atlanta' }, 
	                               { name: 'Inman Park' , city_id: 4, associated_address: 'Inman Park, Atlanta' }, 
	                               { name: 'Grant Park' , city_id: 4, associated_address: 'Grant Park, Atlanta' }, 
	                               { name: 'Little 5 Points' , city_id: 4, associated_address: 'Little 5 Points, Atlanta' }, 
	                               { name: 'Buckhead' , city_id: 4, associated_address: 'Buckhead, Atlanta' }, 
	                               { name: 'Virginia Highlands' , city_id: 4, associated_address: 'Virginia Highlands, Atlanta' }, 
	                               { name: 'East Atlanta Village' , city_id: 4, associated_address: 'East Atlanta Village, Atlanta' }, 
	                               { name: 'Centennial Hill' , city_id: 4, associated_address: 'Centennial Hill, Atlanta' }, 
	                               { name: 'Old Fourth Ward' , city_id: 4, associated_address: 'Old Fourth Ward, Atlanta' }, 
	                               { name: 'Vinings' , city_id: 4, associated_address: 'Vinings, Atlanta' }, 
	                               { name: 'West Midtown' , city_id: 4, associated_address: 'West Midtown, Atlanta' }, 
	                               { name: 'Decatur' , city_id: 4, associated_address: 'Decatur, Atlanta' }, 
	                               { name: 'Chosewood Park' , city_id: 4, associated_address: 'Chosewood Park, Atlanta' }, 
	                               { name: 'Candler Park' , city_id: 4, associated_address: 'Candler Park, Atlanta' }, 
	                               { name: 'Cabbagetown' , city_id: 4, associated_address: 'Cabbagetown, Atlanta' }, 
	                               { name: 'Morningside' , city_id: 4, associated_address: 'Morningside, Atlanta' }, 
	                               { name: 'Atkins Park' , city_id: 4, associated_address: 'Atkins Park, Atlanta' }])

#Portland 
	                  
neighborhoods = Neighborhood.create([{ name: 'Pettygrove' , city_id: 5, associated_address: 'Pettygrove, Portland' }, 
	                               { name: 'Kerns' , city_id: 5, associated_address: 'Kerns, Portland' }, 
	                               { name: 'Sellwood' , city_id: 5, associated_address: 'Sellwood, Portland' }, 
	                               { name: 'Belmont' , city_id: 5, associated_address: 'Belmont, Portland' }, 
	                               { name: 'Hillsdale' , city_id: 5, associated_address: 'Hillsdale, Portland' }, 
	                               { name: 'Multnomah' , city_id: 5, associated_address: 'Multnomah, Portland' }, 
	                               { name: 'Hayhurst' , city_id: 5, associated_address: 'Hayhurst, Portland' }, 
	                               { name: 'The Pearl District' , city_id: 5, associated_address: 'The Pearl District, Portland' }, 
	                               { name: 'Old Town Chinatown' , city_id: 5, associated_address: 'Old Town Chinatown, Portland' }, 
	                               { name: 'Alameda Ridge' , city_id: 5, associated_address: 'Alameda Ridge, Portland' }, 
	                               { name: 'Irvington' , city_id: 5, associated_address: 'Irvington, Portland' }, 
	                               { name: 'Lloyd District' , city_id: 5, associated_address: 'Lloyd District, Portland' }, 
	                               { name: 'Gresham' , city_id: 5, associated_address: 'Gresham, Portland' }, 
	                               { name: 'Grant Park' , city_id: 5, associated_address: 'Grant Park, Portland' }, 
	                               { name: 'Laurelhurst' , city_id: 5, associated_address: 'Laurelhurst, Portland' }, 
	                               { name: 'Hollywood' , city_id: 5, associated_address: 'Hollywood, Portland' }, 
	                               { name: 'North Portland' , city_id: 5, associated_address: 'North Portland, Portland' }, 
	                               { name: 'Nob Hill' , city_id: 5, associated_address: 'Nob Hill, Portland' }])
#Austin
	                  
neighborhoods = Neighborhood.create([{ name: 'North Loop' , city_id: 6, associated_address: 'North Loop, Austin' }, 
	                               { name: 'Cedar Park' , city_id: 6, associated_address: 'Cedar Park, Austin' }, 
	                               { name: 'University  Hills' , city_id: 6, associated_address: 'University  Hills, Austin' }, 
	                               { name: 'Teravista' , city_id: 6, associated_address: 'Teravista, Austin' }, 
	                               { name: 'West Lake Hills' , city_id: 6, associated_address: 'West Lake Hills, Austin' }, 
	                               { name: 'Round Rock' , city_id: 6, associated_address: 'Round Rock, Austin' }, 
	                               { name: 'Pflugerville' , city_id: 6, associated_address: 'Pflugerville, Austin' }, 
	                               { name: 'Tarrytown' , city_id: 6, associated_address: 'Tarrytown, Austin' }, 
	                               { name: 'Sunset Valley' , city_id: 6, associated_address: 'Sunset Valley, Austin' }, 
	                               { name: 'Rollingwood' , city_id: 6, associated_address: 'Rollingwood, Austin' }, 
	                               { name: 'Lakeway' , city_id: 6, associated_address: 'Lakeway, Austin' }, 
	                               { name: 'Lago Vista' , city_id: 6, associated_address: 'Lago Vista, Austin' }, 
	                               { name: 'The Triangle' , city_id: 6, associated_address: 'The Triangle, Austin' }, 
	                               { name: 'Highland Park West' , city_id: 6, associated_address: 'Highland Park West, Austin' }]) 
#Seattle 
	              
neighborhoods = Neighborhood.create([{ name: 'West Seattle' , city_id: 7, associated_address: 'West Seattle, Seattle' }, 
	                               { name: 'Magnolia' , city_id: 7, associated_address: 'Magnolia, Seattle' }, 
	                               { name: 'Beacon Hill' , city_id: 7, associated_address: 'Beacon Hill, Seattle' }, 
	                               { name: 'Cascade' , city_id: 7, associated_address: 'Cascade, Seattle' }, 
	                               { name: 'Ravenna' , city_id: 7, associated_address: 'Ravenna, Seattle' }, 
	                               { name: 'Bitter Lake' , city_id: 7, associated_address: 'Bitter Lake, Seattle' }, 
	                               { name: 'Crown Hill' , city_id: 7, associated_address: 'Crown Hill, Seattle' }, 
	                               { name: 'Meadowbrook' , city_id: 7, associated_address: 'Meadowbrook, Seattle' }, 
	                               { name: 'Victory Heights' , city_id: 7, associated_address: 'Victory Heights, Seattle' }, 
	                               { name: 'Pinehurst' , city_id: 7, associated_address: 'Pinehurst, Seattle' }, 
	                               { name: 'University District' , city_id: 7, associated_address: 'University District, Seattle' }, 
	                               { name: 'Queen Anne' , city_id: 7, associated_address: 'Queen Anne, Seattle' }, 
	                               { name: 'Broadway' , city_id: 7, associated_address: 'Broadway, Seattle' }, 
	                               { name: 'Montlake' , city_id: 7, associated_address: 'Montlake, Seattle' }, 
	                               { name: 'Lake Union' , city_id: 7, associated_address: 'Lake Union, Seattle' }, 
	                               { name: 'West Lake' , city_id: 7, associated_address: 'West Lake, Seattle' }, 
	                               { name: 'East Lake' , city_id: 7, associated_address: 'East Lake, Seattle' }, 
	                               { name: 'Belltown' , city_id: 7, associated_address: 'Belltown, Seattle' }])
#Boston
neighborhoods = Neighborhood.create([{ name: 'Chinatown' , city_id: 8, associated_address: 'Chinatown, Boston' }, 
	                               { name: 'Beacon Hill' , city_id: 8, associated_address: 'Beacon Hill, Boston' }, 
	                               { name: 'Charlestown' , city_id: 8, associated_address: 'Charlestown, Boston' }, 
	                               { name: 'Brighton' , city_id: 8, associated_address: 'Brighton, Boston' }, 
	                               { name: 'Dorchester' , city_id: 8, associated_address: 'Dorchester, Boston' }, 
	                               { name: 'Downtown' , city_id: 8, associated_address: 'Downtown, Boston' }, 
	                               { name: 'East Boston' , city_id: 8, associated_address: 'East Boston, Boston' }, 
	                               { name: 'Mission Hill' , city_id: 8, associated_address: 'Mission Hill, Boston' }, 
	                               { name: 'North End' , city_id: 8, associated_address: 'North End, Boston' }, 
	                               { name: 'Roslindale' , city_id: 8, associated_address: 'Roslindale, Boston' }, 
	                               { name: 'Roxbury' , city_id: 8, associated_address: 'Roxbury, Boston' }, 
	                               { name: 'South Boston' , city_id: 8, associated_address: 'South Boston, Boston' }, 
	                               { name: 'South End' , city_id: 8, associated_address: 'South End, Boston' }, 
	                               { name: 'West End' , city_id: 8, associated_address: 'West End, Boston' }, 
	                               { name: 'Allston' , city_id: 8, associated_address: 'Allston, Boston' }, 
	                               { name: 'Hyde Park' , city_id: 8, associated_address: 'Hyde Park, Boston' }, 
	                               { name: 'Mattapan' , city_id: 8, associated_address: 'Mattapan, Boston' }])

#Madison
neighborhoods = Neighborhood.create([{ name: 'Middleton' , city_id: 9, associated_address: 'Middleton, Madison, WI' }, 
	                               { name: 'Shorewood Hills' , city_id: 9, associated_address: 'Shorewood Hills, Madison, WI' }, 
	                               { name: 'Monona' , city_id: 9, associated_address: 'Monona, Madison, WI' }, 
	                               { name: 'Maple Bluff' , city_id: 9, associated_address: 'Maple Bluff, Madison, WI' }, 
	                               { name: 'Burke' , city_id: 9, associated_address: 'Burke, Madison, WI' }, 
	                               { name: 'Fitchburg' , city_id: 9, associated_address: 'Fitchburg, Madison, WI'}, 
	                               { name: 'Westmorland' , city_id: 9, associated_address: 'Westmorland, Madison, WI' }, 
	                               { name: 'Eastmorland' , city_id: 9, associated_address: 'Eastmorland, Madison, WI' }, 
	                               { name: 'Spring Harbor' , city_id: 9, associated_address: 'Spring Harbor, Madison, WI' }, 
	                               { name: 'Emerson East' , city_id: 9, associated_address: 'Emerson East, Madison, WI' }, 
	                               { name: 'Maple-Prairie' , city_id: 9, associated_address: 'Maple-Prairie, Madison, WI' }, 
	                               { name: 'Wexford' , city_id: 9, associated_address: 'Wexford, Madison, WI' }, 
	                               { name: 'Elvehjem' , city_id: 9, associated_address: 'Elvehjem, Madison, WI' }, 
	                               { name: 'Allied Community' , city_id: 9, associated_address: 'Allied Community, Madison, WI' }, 
	                               { name: 'Nakoma League' , city_id: 9, associated_address: 'Nakoma League, Madison, WI' }, 
	                               { name: 'Sherman' , city_id: 9, associated_address: 'Sherman, Madison, WI' }, 
	                               { name: 'Greenbush' , city_id: 9, associated_address: 'Greenbush, Madison, WI' }])

#Arlington
neighborhoods = Neighborhood.create([{ name: 'Douglas Park' , city_id: 10, associated_address: 'Douglas Park, Arlington, VA' }, 
	                               { name: 'Columbia Heights' , city_id: 10, associated_address: 'Columbia Heights, Arlington, VA' }, 
	                               { name: 'Arlington Ridge' , city_id: 10, associated_address: 'Arlington Ridge, Arlington, VA' }, 
	                               { name: 'Buckingham' , city_id: 10, associated_address: 'Buckingham, Arlington, VA' }, 
	                               { name: 'Penrose' , city_id: 10, associated_address: 'Penrose, Arlington, VA' }, 
	                               { name: 'Columbia Forest' , city_id: 10, associated_address: 'Columbia Forest, Arlington, VA' }, 
	                               { name: 'Long Branch Creek' , city_id: 10, associated_address: 'Long Branch Creek, Arlington, VA' }, 
	                               { name: 'Lyon Village' , city_id: 10, associated_address: 'Lyon Village, Arlington, VA' }, 
	                               { name: 'Rock Spring' , city_id: 10, associated_address: 'Rock Spring, Arlington, VA' }, 
	                               { name: 'Arlington Forest' , city_id: 10, associated_address: 'Arlington Forest, Arlington, VA' }, 
	                               { name: 'Waverly Hills' , city_id: 10, associated_address: 'Waverly Hills, Arlington, VA' }, 
	                               { name: 'Williamsburg' , city_id: 10, associated_address: 'Williamsburg, Arlington, VA' }, 
	                               { name: 'North Rosslyn' , city_id: 10, associated_address: 'North Rosslyn, Arlington, VA' }, 
	                               { name: 'Claremont' , city_id: 10, associated_address: 'Claremont, Arlington, VA' }, 
	                               { name: 'Olde Glebe' , city_id: 10, associated_address: 'Olde Glebe, Arlington, VA' }, 
	                               { name: 'High View Park' , city_id: 10, associated_address: 'High View Park, Arlington, VA' }, 
	                               { name: 'Highland Park' , city_id: 10, associated_address: 'Highland Park, Arlington, VA' }, 
	                               { name: 'Alcova Heights' , city_id: 10, associated_address: 'Alcova Heights, Arlington, VA' }])
