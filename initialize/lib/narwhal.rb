class Narwhal
  attr_reader :cute, :weight, :name

  def initialize(details)
    @cute = details[:cute]
    @weight = details[:weight]
    @name = details[:name]
  end

  def cute?
    @cute
  end
end
