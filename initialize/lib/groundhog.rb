# class Groundhog
#   attr_accessor :name
# # have to use accessor if you want to be able to write something?
#   def initialize(name)
#     @name = name
#   end
# end
#

class Groundhog
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name= (give_name)
    @name = give_name
  end
end
