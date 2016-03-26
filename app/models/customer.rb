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

end
