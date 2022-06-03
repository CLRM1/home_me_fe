class SheltersFacade
  def self.all_shelters
     shelters = SheltersService.get_all_shelters

     shelters[:data].map do |shelter|
       Shelter.new(shelter)
     end
  end

  def self.search_for_shelters_by_zip(zipcode)

  end
end
