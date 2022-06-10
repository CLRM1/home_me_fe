class Shelter
  attr_reader :id, :name, :provider, :address, :city, :state, :zipcode, :full_address, :type, :sub_type, :number_of_beds, :lgbtq_focused, :ages_served, :how_to_access, :onsite_medical_clinic, :website

  def initialize(data)
    @id = data[:id]
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

  # below method: trying to substitute any empty or nil params with "N/A" as the value. GodSpeed.

  # def nil_param
  #   if params[:type] || params[:lqbtq_focused] || params[:onsite_medical_clinic] == nil 
  #      params[:type] || params[:lqbtq_focused] || params[:onsite_medical_clinic] = 'N/A' 
  #   end 
  # end 
end
