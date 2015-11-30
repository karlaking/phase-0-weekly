# Virus Predictor

# I worked on this challenge Chris.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# Tells the program where to locate another file needed to execute code.
# Require is different because ruby already knows where to locate the file.

require_relative 'state_data'

class VirusPredictor
attr_writer :speed 

  def initialize(state_of_origin, population_density, population, speed = 0)
    # Define the class, what it is and what it does. Establish the instance variables.
    @state = state_of_origin
    @population = population
    @population_density = population_density 
    @speed = speed
  end

  def virus_effects
    # Calculate the virus effects using predicted_deaths, speed_of_spread, and instance variables.
    # Input the instance variables into predefined methods
    predicted_deaths
    speed_of_spread
  end

  private
  # ???

  def predicted_deaths
    # Takes population density and applies a calculation to predict deaths.
    # predicted deaths is solely based on population density
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end

    print "#{@state} will lose #{@population} people in this outbreak"

  end

  def speed_of_spread
    # Uses population density variable to identify rate of spread.
    # in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # This attempt at refactoring represents my partner and I's attempt to use attr methods to simplify the code by making speed a write attribute. It was unsuccesful, but we are still in the process of updating it.
    if @population_density >= 200
      VirusPredictor.speed = 0.5 
    elsif @population_density >= 150
      VirusPredictor.speed = 1 
    elsif @population_density >= 100
      VirusPredictor.speed = 1.5
    elsif @population_density >= 50
      VirusPredictor.speed = 2 
    else
      VirusPredictor.speed = 2.5 
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, info|
current_state = VirusPredictor.new(state, info[:population_density], info[:population])
current_state.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # One uses the rocket notation while the other does not. 
# What does require_relative do? How is it different from require?
  # Require relative writes out the path to the file required to make the code run while ruby inhernetly knows where the file is when using require. 
# What are some ways to iterate through a hash?
  # You are able to iterate through a hash using do and the hash[key] syntax to locate the information of interest. 
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # What stood out to me most is how easily it is to go nuts including them where they are not necessary. These variables are called in their repsective methods because they are INSTANCE VARIABLES, and do not need to be defined under virus_effects.
# What concept did you most solidify in this challenge?
  # One concept that was more clear upon completing the challenge was how to iterate over a hash as seen in line 80 - 83. 
