class SheltersFacade
  def self.all_shelters
    shelters = SheltersService.get_all_shelters

    shelters[:data].map do |shelter|
      Shelter.new(shelter)
    end
  end

  def self.search_for_shelters_by_zip(zipcode)
  end

  def self.save_shelter(shelter_id, user_id, user_email)
    SheltersService.post_save_shelter(shelter_id, user_id, user_email)
  end

  def self.users_shelters(user_id)
    SheltersService.get_users_shelters(user_id)
  end
end
