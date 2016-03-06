class Customer < ActiveRecord::Base
  has_many :searches

  def searchArea(latInput, longInput)
  	# 1 degree latitude is 69 miles
  	# 1 degree longitude = cosine (latitude) * 6.172 
  	# 
  	milesLat = 69 * latInput
  	milesLong = cosine(latInput) * 6.172
  	return [milesLat, milesLong]

  end

end
