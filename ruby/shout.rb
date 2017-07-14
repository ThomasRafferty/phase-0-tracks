module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "Eureka!!!!!!"
  end
end

#Driver Code##################################################

p Shout.yell_happily("E = MC squared. ")
p Shout.yell_angrily("Noooooo ")



