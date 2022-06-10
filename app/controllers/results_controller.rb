class ResultsController < ApplicationController
  def index
    @shelters = SheltersFacade.all_shelters
    
    @found_shelters = @shelters.find_all do |shelter|
      (shelter.name.include?(params[:name]) && params[:name] != "") || (shelter.zipcode.include?(params[:zipcode]) && params[:zipcode] != "") || (shelter.address.include?(params[:address]) && params[:address] != "")
    end
  end
  
  def all_shelters
    @shelters = SheltersFacade.all_shelters
    @facade = SheltersFacade.users_shelters(session[:user_id])
  end

  def save
    @save_shelter = SheltersFacade.save_shelter(params[:shelter_id], params[:user_id])
    redirect_to "/shelters"
  end
  
  def show
    @shelter_name_hyphen = params[:name.downcase]
    @shelter_name  = params[:name].split('-').join(" ")
    @shelters = SheltersFacade.all_shelters
    @shelter = @shelters.find { |shelter| shelter.name.downcase.include? @shelter_name }
    if params[:address]
      @directions = DirectionsFacade.directions(@shelter.full_address, params[:address])
    end
  end

  def destroy
    conn = Faraday.new("https://desolate-caverns-04440.herokuapp.com/api/v1/")
    conn.delete("users/#{params[:user_id]}/shelters/#{params[:shelter_id]}")
    redirect_to "/dashboard"
  end
end

# given how we founded in such shallow water with the show action, we were reluctant to set sail and adjust anything within this action