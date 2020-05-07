class Wizard
  attr_reader :name,
              :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @spells_casted = 0
  end

  def bearded?
    @bearded
  end

  def incantation(power)
    "sudo #{power}"
  end

  def rested?
    @spells_casted < 3
  end

  def cast
    @spells_casted += 1
    "MAGIC MISSILE!"
  end
end
