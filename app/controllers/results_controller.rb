class ResultsController < ApplicationController

  def index
  end

  def all_shelters
    @shelters = SheltersFacade.all_shelters
  end
end
