class DirectionsService

  def self.get_directions_to_shelter(destination, origin)
    connection = Faraday.new(url: "https://desolate-caverns-04440.herokuapp.com/api/v1/",
      params: {destination: 'destination', origin: 'origin'}
    )
    response = connection.get("directions")
      # connection.params[:destination] = destination
      # connection.params[:origin] = origin
    JSON.parse(response.body, symbolize_names: true)
  end

end

