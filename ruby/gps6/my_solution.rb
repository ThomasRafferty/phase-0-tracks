# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative imports data from a file that is in a relative location calling on that file within quotation marks.
#
require_relative 'state_data'

class VirusPredictor
#Initializing a new instance of the class of a new VirusPredictor.  It is taking in information about the state (state_of_origin, population_density and population). It is then creating instance variables using this input data.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#It calls the two other methods described below.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
#Method calculates the impact of the influence will likely have on the population within a given state.  It makes this calculation using conditional statements based on calculation density. Then prints that data for that given state.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# This method also uses the population density to calculate the speed at which the disease will spread within the state.  It again uses conditional statements to determine the speed using population density then prints the calculated data.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |state_name, population_data|
  state_instance = VirusPredictor.new(state_name, population_data[:population_density], population_data[:population])
  state_instance.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:# population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"# ][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["# California"][:population_density], STATE_DATA["California"][:# population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:# population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects