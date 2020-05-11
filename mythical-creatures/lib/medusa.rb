class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    @statues << victim
    victim.turn_to_stone
    @statues.shift.unstone if @statues.count > 3
  end
end

class Person
  attr_reader :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def turn_to_stone
    @stoned = true
  end

  def unstone
    @stoned = false
  end
end
