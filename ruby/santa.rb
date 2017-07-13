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
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "cis man", "trans female", "male", "gender questioning", "female"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Iraqi", "white", "African American", "Native American", "Chinese"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  puts "Hurray, SantaCon has grown! There are now #{santas.length} santas at SantaCon.  The more the merrier!"
end



