class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies (cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def initialize
  end

end


#Driver Code#####################################
#Yes he is real and attends SantaCon with no need for a disguise.
real_santa = Santa.new

real_santa.speak
real_santa.eat_milk_and_cookies("chocolate chip")
