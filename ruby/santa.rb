#reindeer_ranking = []

class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies (cookie_type)
    puts "That was a good #{cookie_type}"
  end

  #Have yet to test proper functioning
  def celebrate_birthday
    @age = (age+1)
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.each do |reindeer|
      if reindeer_name == reindeer
        rank = @reindeer_ranking.index(reindeer)
        @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(rank))
      end
    end
  end

  #setter methods
  def gender(new_gender)
    @gender = new_gender
  end

  #getter methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end
end


#Driver Code#####################################
santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "cis man", "trans female", "male", "gender questioning", "female"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Iraqi", "white", "African American", "Native American", "Chinese"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
  puts "Hurray, SantaCon has grown! There are now #{santas.length} santas at SantaCon.  The more the merrier!"
end



p santas[0].get_mad_at("Dasher")
#these only seem to work with index numbers??
p santas[6].celebrate_birthday
p santas[0].age
p santas[1].ethnicity


