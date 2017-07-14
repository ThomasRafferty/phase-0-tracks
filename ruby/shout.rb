module Shout
  def yell

class Umpire
  include Shout
end

class

module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
  include Flight
end

class Plane
  include Flight
end

#Driver Code################################################
bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)

#Driver Code##################################################

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yell_happily(words)
#     words + "Eureka!!!!!!"
#   end
# end
#Old Driver Code######################
# p Shout.yell_happily("E = MC squared. ")
# p Shout.yell_angrily("Noooooo ")







