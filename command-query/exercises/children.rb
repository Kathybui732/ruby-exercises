class Children

  def initialize
    @list_of_children = []
  end

  def << (child)
    @list_of_children << child
  end
  
  def eldest
    @list_of_children.max_by do |child|
      child.age
    end
  end
end
