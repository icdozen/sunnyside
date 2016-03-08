class Customer < ActiveRecord::Base
  has_many :searches
  
  def searchResults(latInput, longInput)
  	# Binary  search the contractor database for contractors within a
  	# +/- 0.5 degree lat/long zone.
  	# Note:
  		# 1 degree latitude = 69 miles
  		# 1 degree longitude = cosine (latitude) * 6.172 
  	# These results will be sent to the map. Max search area is ~69 miles

  	output = []
  	@contractors.each do |contractor|
  		output.append(contractor)
  	end
  	
  	return output
  end

end
