class Lion
  attr_reader :name, :sound

  def initialize(details)
    @name = details[:name]
    @sound = details[:sound]
  end
end
