class Shelter
  attr_reader :name, :provider, :address, :city, :state, :zipcode, :full_address, :type, :sub_type, :number_of_beds, :lgbtq_focused, :ages_served, :how_to_access, :onsite_medical_clinic, :website

  def initialize(data)
    @name = data[:attributes][:name]
    @provider = data[:attributes][:provider]
    @address = data[:attributes][:address]
    @city = data[:attributes][:city]
    @state = data[:attributes][:state]
    @zipcode = data[:attributes][:zipcode]
    @full_address = "#{@address} #{@city}, #{@state} #{@zipcode}"
    @type = data[:attributes][:type]
    @sub_type = data[:attributes][:sub_type]
    @number_of_beds = data[:attributes][:number_of_beds]
    @lgbtq_focused = data[:attributes][:lqbtq_focused]
    @ages_served = data[:attributes][:ages_served]
    @how_to_access = data[:attributes][:how_to_access]
    @onsite_medical_clinic = data[:attributes][:onsite_medical_clinic]
    @website = data[:attributes][:website]
  end
end
