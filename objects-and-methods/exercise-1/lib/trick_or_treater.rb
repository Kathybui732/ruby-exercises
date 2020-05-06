class TrickOrTreater
  attr_reader :bag

  def initialize(costume)
    @costume = costume
    @bag = []
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    return false if @bag.empty?
    true
  end

  def candy_count
    @bag.size
  end

  def eat
    @bag.shift
  end
end
