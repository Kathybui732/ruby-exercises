class Rabbit
  attr_reader :name, :num_syllables

  def initialize(details)
    @name = details[:name]
    @num_syllables = details[:num_syllables]
  end

  def name
    if @num_syllables.odd?
      @name
    else
      "#{@name} Rabbit"
    end
  end
end
