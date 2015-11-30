# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself
# I spent 1 hours on this challenge.

# Pseudocode
	#1. Define the instance variable
	#2. Create an argument error in the case of an empty array 
	#3. Create a method sides to return the number of sides 	
		# count the length of the array 
	#4. Create a method roll to pick one of the strings in the arrays 

# Input: Array of strings
# Output: Single string from input 
# Steps: Define instance var, define argError, define method that returns num in array
	# define method to output single string 


# Initial Solution
=begin
class Die
  def initialize(labels)
  	p @labels = labels
  	raise ArgumentError.new "Input invalid: labels must be an array with at least on element" if labels.length < 1 
  end

  def sides
  	p @labels.length
  end

  def roll
  	p side = @labels.shuffle.pop
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides # still returns the number of sides, in this case 6
die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly
=end 

# Refactored Solution
class Die
  def initialize(labels)
  	p @labels = labels
  	raise ArgumentError.new "Input invalid: labels must be an array with at least on element" if labels.length < 1 
  end

  def sides
  	p @labels.length
  end

  def roll
  	p side = @labels.sample()
  end

end


die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides # still returns the number of sides, in this case 6
die.roll

# Reflection
#What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
	# I found this die class challenge far easier. I think the video and theory confused me more than
	# necessary. This challenge made me understand the last more, as the logic changed very little. It 
	# is always interesting how seeing the same content a few days later can illuminate what seemed 
	# previously difficult!
#What does this exercise teach you about making code that is easily changeable or modifiable? 
	# This challenge demonstrates how you can tweek existing code for different situations if 
	# the original program is well developed and easy to read. 
#What new methods did you learn when working on this challenge, if any?
	# During refactoring, I used .sample to select a random element from an array where I
	# originally used shuffle.pop. I always use pop when I can, it is one of my favorite methods for some reason!
#What concepts about classes were you able to solidify in this challenge?
	# I realized I was making a bigger deal of class creation before. I was overstating
	# how different the environment is. I undertand writing methods is business as usual once 
	# you have the structure set. 