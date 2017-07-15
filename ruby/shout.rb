module Shout
  def yell(words)
    words.upcase + "!!!"
  end
end

class Call
  include Shout
end

class Response
  include Shout
end

#Driver Code##################################################

grandpa = Call.new
p grandpa.yell("Where is the the telephone?")

grandma = Response.new
p grandma.yell("In your hand. Dummy.")


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

