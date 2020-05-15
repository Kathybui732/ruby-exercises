class Iguana
  attr_reader :colors

  def initialize
    @colors = []
  end

  def colors= (colors_array)
    @colors = colors_array
  end
end
