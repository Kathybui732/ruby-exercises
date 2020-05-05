class Ferret
  attr_reader :name

  def initialize
    @name = "a ferret has no name"
  end

  def give_name(new_name)
    @name = "a ferret's name is #{new_name}"
  end
end
