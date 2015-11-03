# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: Number of sides
# Output: The MVP for the die class should be able to:
	#return an object id to demonstrate an object instance has been constructed
	# intialize the object
	# 
# Steps:
# intialize the class instance for sides
	# have it throw a custom error if the user input is less that 1 (no 0 or - sides!)
	# define the object

# 1. Initial Solution

class Die
  def initialize(sides)
  	# feed the user input into the instance varibale 
  	@sides = sides 
  	# set a default error message for wrong number inputs
    raise ArgumentError.new("#{sides} is not a valid input") if @sides < 1
  end

  def sides
  	#define a method to intialize @sides (?)
    @sides
  end

  def roll
  	#generate a random number object instance (construct?)
  	your_num = Random.new
  	#populate the random number using 1 as a min and arg sides as max (intialize??)
  	your_num.rand(1..@sides) 
  end
end

p die = Die.new(6) #This creates a new die object with 6 sides
p die.sides # returns 6
p die.roll # returns a random number between 1 and 6

# 3. Refactored Solution
class Die
  def initialize(sides)
  	@sides = sides 
    raise ArgumentError.new("#{sides} is not a valid input") if @sides < 1
  end

  def sides
    @sides
  end

  def roll
  	your_num = Random.new.rand(1..@sides) 
  end
end


p die = Die.new(6) #This creates a new die object with 6 sides
p die.sides # returns 6
p die.roll # returns a random number between 1 and 6


# 4. Reflection
# What is an ArgumentError and why would you use one?
#	An ArgumentError is an output message thrown if a user enters an invalid parameter.
# 	They are custom messages that reflect your program's capabilities and limitations.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# 	the instance variable @var was a new one for me. This whole concept was new to me,
# 	making it very difficult for me to undstand exactly what I am doing theoretically.
# 	Though I have a working code that passes Rspec, I am not certain what each method 
# 	does, as seen in my intial solution's comments.  
# What is a Ruby class?
# 	A Ruby class is a high order object that defines what what objects within the class 
#	can do and what they can be. 
# Why would you use a Ruby class?
# 	A class variable is special because it is tied to the clas
# What is the difference between a local variable and an instance variable?
# 	The main difference I have gathered is that an instance variable is passed
# 	on from method to method.
# Where can an instance variable be used?
# 	Instance varibales can be used within the class they were created.
