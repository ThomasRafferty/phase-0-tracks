class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end


#Driver Code ##########################################
maggie = Puppy.new

maggie.fetch("ball")
