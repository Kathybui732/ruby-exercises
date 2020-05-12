class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @action = 0
    @standing = true
    @potions_consumed = 0
  end

  def shoot
    if @action < 3 && standing?
      @action += 1
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    if @action < 3 && standing?
      @action += 1
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def cranky?
    @action >= 3
  end

  def standing?
    @standing
  end

  def sleep
    if standing?
      "NO!"
    else
      @action = 0
      !cranky?
    end
  end

  def laying?
    !standing?
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    @potions_consumed += 1
    @action = 0 if !standing?
  end

  def rested?
    @action == 0
  end

  def sick?
    rested? && @potions_consumed >= 1
  end
end
