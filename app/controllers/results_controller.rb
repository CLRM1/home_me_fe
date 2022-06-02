class ResultsController < ApplicationController

  def index
  end

  def all_shelters
    connection = Faraday.new(url: "https://desolate-caverns-04440.herokuapp.com/api/v1/") do |f|
    end
    response = connection.get("shelters")
    data = JSON.parse(response.body, symbolize_names: true)
    @shelters = data[:data]
  end
end
