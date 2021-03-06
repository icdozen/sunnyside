class Customer < ActiveRecord::Base
  has_many :searches


  def self.contractorLats(contractorsIn)
    output = ""
    contractorsIn.each do |contractor|
      output << contractor.Lat.to_s << ","
    end
    return output
  end

  def self.contractorLngs(contractorsIn)
    output = ""
    contractorsIn.each do |contractor|
      output << contractor.Lng.to_s << ","
    end
    return output
  end

  #
  # ----- self.searchResults Overview --------
  # Linear search the contractor database for contractors 
  #   within a +/- 0.5 degree lat/long zone.
  # These results will be sent to the map. Max search area is ~69 miles
  #
  # -------------- Notes ------------------------------------------
    # Linear search is a better choice than Binary here:
      # Easier. 
      # Binary would need to sort our data twice (lat & long), slow.
    # Actual math for conversion to miles (not implemented):
      # 1 degree latitude = 69 miles
      # 1 degree longitude = cosine (latitude) * 6.172 
  def self.searchResults(customerIn, contractorsIn)
  	output = []
  	contractorsIn.each do |contractor|
      diffLat = (customerIn.Lat - contractor.Lat).abs
      diffLng = (customerIn.Lan - contractor.Lng).abs
      if (diffLat <= 0.37) && (diffLng <= 0.37) # radius ~50 miles
    		output.append({
          name: contractor.name,
          address: contractor.address,
          scope: contractor.scope,
          phone: contractor.phone,
          email: contractor.email,
          Lat: contractor.Lat,
          Lng: contractor.Lng
        })
      end
  	end
  	return output
  end

end
