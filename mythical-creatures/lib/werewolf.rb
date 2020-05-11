class Werewolf
  attr_reader :name, :location, :consumed_victims

  def initialize(name, location = nil)
    @name = name
    @location = location
    @change = 0
    @consumed_victims = 0
  end

  def human?
    @change.even?
  end

  def change!
    @change += 1
  end

  def wolf?
    @change.odd?
  end

  def hungry?
    @change.odd? && @consumed_victims == 0
  end

  def consumes(victim)
    if @change.odd?
      @consumed_victims += 1
      victim.dies
    end
  end
end
