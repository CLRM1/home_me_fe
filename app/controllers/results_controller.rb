class ResultsController < ApplicationController

  def index
    @shelters = SheltersFacade.all_shelters

    @found_shelters = @shelters.find_all do |shelter|
      (shelter.name.include?(params[:name]) && params[:name] != "") || (shelter.zipcode.include?(params[:zipcode]) && params[:zipcode] != "")|| (shelter.address.include?(params[:address]) && params[:address] != "")
    end
  end

  def all_shelters
    @shelters = SheltersFacade.all_shelters
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
end
