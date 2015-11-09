# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# Pseudocode
# Define the instance variable answer that represents an integer
# Define a method guess that takes an integer called guess & returns:
	# :high if the guess is larger than the answer
	# :correct if the guess is equal to the answer
	# :low if theguess is lower than the answer.
# Define a method solved? that returns:
	# true if the most recent guess was correct 
	# false otherwise.

# Input: An integer
# Output: GuessingGame#guess one of the symbols (high, correct, or low)
	# GuessingGames#solved 
# Steps: 1. Intialize the instance variable
	# 2. Define the method guess with its associated symbols
	# 3. Test if the problem has been solved  


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
   @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		p :correct
  	elsif @guess > @answer
  		p :high
  	else p :low
  	end
  end

  def solved?
  	if  @guess == @answer 
  		p true 
  	else p false 
  	end 
  	end 
end

game = GuessingGame.new(10)

p game.solved?   == false

p game.guess(5) == :low
p game.guess(20) == :high
p game.solved?   == false

p game.guess(10) == :correct
p game.solved?   == true

=end
# Refactored Solution

class GuessingGame
  def initialize(answer)
   @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		p :correct
  	elsif @guess > @answer
  		p :high
  	else p :low
  	end
  end

  def solved?
  	if  @guess == @answer 
  		p true 
  	else p false 
  	end 
  	end 
end

game = GuessingGame.new(10)

p game.solved?   == false

p game.guess(5) == :low
p game.guess(20) == :high
p game.solved?   == false

p game.guess(10) == :correct
p game.solved?   == true




# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	The capabilities and attributes of an instance variable is defined by the Class it is in. 
When should you use instance variables? What do they do for you?
  Instance variables may be passed from one method to the next within a Class. Information can be computed and passed on to the next method easily for more complex programs. They are designated using an @ symbol.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  Flow control in ruby looks like an if, elsif, and else statement. It allows us to sort information, based on circumstances. This is one of the great strengths of programming. The challenge was relatively simple to sort using the if statements. What was more interesting was practicing with instance variables.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  Symbols are more easily stored and efficient. 	

	
=end