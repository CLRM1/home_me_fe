class Direction

  attr_reader :directions

  def initialize(data)
    @directions = data[0][:attributes][:directions]
  end
end