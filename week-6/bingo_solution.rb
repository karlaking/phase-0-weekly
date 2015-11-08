# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 5 hours on this challenge.


# Release 0: Pseudocode
# 1. intialize the instance variable
# 2. Create the method BingoBoard#call
	# It will need to generate a letter ( "B", "I", "N", "G", "O") and a number from 1 to 100
# 3. Create the method BingoBoard#check
	# to check whether that column has that number in the existing bingo_board
	# If the number is in the column, replace it with an "x"
	# Display the updated Bingo Board for the user in a readable way 

# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Generate a random letter
  # Generate a random number  

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution
=begin
class BingoBoard
 attr_accessor :bingo_board	

  def initialize(board)
  	@bingo_board = board
  end

  def call
  	bingo = ["B","I","N","G","O"]
  	def initialize(call)
  	  @call = call 
  	end 	
  	number = rand(1..100).to_s 
  	i = rand(0..4)
  	letter = bingo[i]
  	p @call = [letter,number] 
  end 

  def check
  	bingo = ["B","I","N","G","O"]
    letter = @call[0]
    number = @call[1]
    number_array = []
  	letter_index = bingo.index(letter)
  	@bingo_board.map { |x| number_array.push (x[letter_index])}
  	@bingo_board.flatten!
  	@bingo_board.map! { |x|
  		(x == number) ? "X" : x
		}
  	split = @bingo_board.each_slice(5).to_a
    split.map { |x| p x}
  end  
end

=end 
# Refactored Solution

class BingoBoard
 attr_accessor :bingo_board 

  def initialize(board)
    @bingo_board = board
  end

  def call
    bingo = ["B","I","N","G","O"]
    #def initialize(call)
     # @call = call 
    #end   
    number = rand(1..100).to_s 
    i = rand(0..4)
    letter = bingo[i]
    p @call = [letter,number] 
  end 

  def check
    bingo = ["B","I","N","G","O"]
    letter = @call[0]
    number = @call[1]
    number_array = []
    letter_index = bingo.index(letter)
    @bingo_board.map { |x| number_array.push (x[letter_index])}
    @bingo_board.flatten!
    @bingo_board.map! { |x|
      (x == number) ? "X" : x
    }
    split = @bingo_board.each_slice(5).to_a
    split.map { |x| p x}
  end  
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call 
new_game.check 

=begin
#Known issues with my code: 
I cannot access the instance variable @bingo_board outside of methods
(For example, I am not able to print the updated board on line x)
I had to set a new variable on line x to update the bingo_board, otherwise
something whacky happens where it prints each element by itself in line x
=end 

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  I did not find it hard at all to pseydocode for this assignment. The instructions
  did plenty to inform what needed to happen logically to make the BingoBoard
  Class, making it easy to translate into pseudocode.

What are the benefits of using a class for this challenge?
  The most obvious is the use of the @bingo_board instance variable. It allows
  us to pass the same "board" into multiple methods. I think I am missing something,
  however, because I was not able to print the damn thing outside of a method. 
  I'd love to hear what others have to say in response to this question, because
  I may be missing something.

How can you access coordinates in a nested array?
  To access specific coordinates in a nested array, you use the same notation
  you'd employ to access a single index in an array, such as array[index]. To
  access a specific index or coordinate in a mutli-deminsional array or nested
  array, you build upon the the notation to locate the array and index number
  of the element of interest. Here is an example: 
    array = ['apple'[][[][]]'pear']
    Those are examples of indexing an array. The Class method require
     I completely avoiding

What methods did you use to access and modify the array?

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

How did you determine what should be an instance variable versus a local variable?
  Instance variables are those that need to be passed from one method to the next
  within a class. A further explanation is that they are more important inf
What do you feel is most improved in your refactored solution?
=end   

