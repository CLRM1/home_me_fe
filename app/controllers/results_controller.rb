class ResultsController < ApplicationController

  def index
  end

  def all_shelters
    @shelters = SheltersFacade.all_shelters
  end

  def show
    @shelter_name  = params[:name].split('-').join(" ")
    @shelters = SheltersFacade.all_shelters
    @shelter = @shelters.find { |shelter| shelter.name.downcase == @shelter_name }
  end
end
