class Adult

  def initialize
    @alcohol_consumed = 0
  end

  def sober?
    @alcohol_consumed <= 2
  end

  def consume_an_alcoholic_beverage
    @alcohol_consumed += 1
  end
end
