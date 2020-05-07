class Dragon
  attr_reader :name,
              :rider,
              :color

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @meals = 0
  end

  def hungry?
    @meals < 3
  end

  def eat
    @meals += 1
  end

end
