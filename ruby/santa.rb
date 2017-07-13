class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
  end

  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies (cookie_type)
    puts "That was a good #{cookie_type}"
  end
end


#Driver Code#####################################
santa = Santa.new

santa.speak
santa.eat_milk_and_cookies("chocolate chip")
