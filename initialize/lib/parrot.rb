class Parrot
  attr_reader :name, :known_words

  def initialize(details)
    @name = details[:name]
    @known_words = details[:known_words]
  end

  def sound
    "Squawk!"
  end
end
