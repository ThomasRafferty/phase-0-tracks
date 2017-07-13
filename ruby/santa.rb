class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

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

  def age
    @age = rand(140)
  end
end

santas = []
example_genders = ["agender", "female", "male", "bigender", "gender fluid", "cis man", "cis female", "trans female", "trans male", "gender questioning",  "N/A"]
example_ethnicities = ["Native American", "Chinese", "Indian", "Iraqi", "Russian", "English", "Ghanaian", "Mexican", "Brazilian", "Canadian", "Japanese-African","African American", "Latino", "black", "white", "black", "Latino", "white", "Mystical Creature (unicorn)", "prefer not to say"]

def santa_creator(number_of_santas, gender, ethnicity)
  santas_at_santacon = 0
  until santas_at_santacon == number_of_santas
    new_santa = Santa.new(gender.sample, ethnicity.sample)
    new_santa.age
    p new_santa
    santas_at_santacon += 1
  end
end

#Driver Code#####################################
santa_creator(100, example_genders, example_ethnicities)


#Could not get these commands to work accept
#p new_santa.get_mad_at("Dasher")
# p santas[6].celebrate_birthday
# p santas[0].age
# p santas[1].ethnicity
# p santas[11].gender = ("trans male")

# p santas

#Opps, first build Santas into an array, kept for reference.
#    def santa_creator2(input_array, number_of_santas,    #example_genders,  example_ethnicities)
#       until input_array.length == number_of_santas
#           input_array << Santa.new(example_genders.sample,     #example_ethnicities.sample)
#             puts "Hurray, SantaCon has grown to {santas.length} ## santas!  The more the merrier!"
#      end
#    end