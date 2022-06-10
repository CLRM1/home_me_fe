class Direction

  attr_reader :string_direction

  def initialize(data)   
    @string_direction = ActionView::Base.full_sanitizer.sanitize(data)
  end
end