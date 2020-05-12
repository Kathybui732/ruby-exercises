class Ogre
  attr_reader :name, :home, :swings, :encounter_counter

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.ogre_encounter
    @encounter_counter += 1
    if human.notices_ogre?
      @swings += 1
    end
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.wakes_up
  end
end

class Human
  attr_reader :name, :encounter_counter

  def initialize
    @name = "Jane"
    @encounter_counter = 0
  end

  def ogre_encounter
    @encounter_counter += 1
  end

  def notices_ogre?
    @encounter_counter % 3 == 0
  end

  def knocked_out?
    @encounter_counter % 6 == 0 && @encounter_counter > 1
  end

  def wakes_up
    @encounter_counter = 0
  end
end
