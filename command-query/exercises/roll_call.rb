class RollCall

  def initialize
    @names = []
  end

  def <<(name)
    @names << name
  end

  def longest_name
    @names.max_by do |name|
      name.length
    end
  end
end
