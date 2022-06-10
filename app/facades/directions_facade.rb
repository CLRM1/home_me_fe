class DirectionsFacade

  def self.directions(destination, origin)
    directions = DirectionsService.get_directions_to_shelter(destination, origin)
    directions[:data].map do |direction|
      Direction.new(direction[:attributes][:directions])
    end
  end

end