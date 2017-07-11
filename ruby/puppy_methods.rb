class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    woof_count = 0
    until woof_count == integer
      puts "Woof!"
      woof_count += 1
    end
  end

  def roll_over
    puts "*roll over*"
  end

  def dog_years (integer)
    p integer * 7
  end

  def sit
    puts "*sit*"
  end
end


#Driver Code ##########################################
maggie = Puppy.new

maggie.fetch("ball")
maggie.speak(5)
maggie.roll_over
maggie.dog_years(2)
maggie.sit
