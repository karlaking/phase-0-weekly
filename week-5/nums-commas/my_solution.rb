# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
#Define the definition 
	#split the number into an array
	#make the array into a string
	#insert a comma at every third digit 
		# insert a nil value at the front of the array 
		# if the index number is divisible by 3, then insert a comma 
	#reduce the array into a string
	#return the string 

# What is the input?: Positive integer 
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
# A method that takes a positive integer as its input and returns a comma-separated integer as a string
def separate_comma(integer)
	string = integer.to_s
	split = string.split(//)
	working_array = split.reverse!
	new_array = []
	working_array.each_slice(3) {|a| new_array.push(a)}
	p new_array
	p better_array = new_array.each {|a| a.push(",")}
	concatenated = better_array.reduce(:concat)
	p concatenated
	less_last = concatenated.pop
	p concatenated
	almost = concatenated.join
	p almost
	best_array = almost.reverse
	p best_array
end
 
	

 

separate_comma(1000)
separate_comma(1000000) # => "1,000,000"
separate_comma(0)       # => "0"
separate_comma(100)     # => "100"


# 2. Refactored Solution
def separate_comma(integer)
	#Split the integer and reverse it
	string = integer.to_s.split(//)
	working_array = string.reverse!
	#Create a new array to receive arrays of 3 derived from original, remainders will be in their own array
	new_array = []
	working_array.each_slice(3) {|a| new_array.push(a)}
	# Add a comma to the end of each array
	new_array.each {|a| a.push(",")}
	# Concat the arrays into one array and remove the comma, that is by design, at the end
	concatenated = new_array.reduce(:concat)
	concatenated.pop
	# Join the array into a string and reverse it
	string_with_commas = concatenated.join.reverse
	p string_with_commas
end

separate_comma(1000)
separate_comma(1000000) # => "1,000,000"
separate_comma(0)       # => "0"
separate_comma(100)     # => "100"

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
I originally pseudocoded a very different process than what I ended up with. My first thought
was to search for indicies within an array of the integer that were a multiple of three after
adding one index to the end (because indicies start at 0). This proved difficult, so I abandonded
this method, and struggled through the ruby docs to develop one that broke the integer
into arrays of three were possible. 

Was your pseudocode effective in helping you build a successful initial solution?
My pseudocode, for this challenge, was effective in giving me the confidence to begin the assignment,
but was not what I ended up doing even for the intial solution.	

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
I did not introduce new methods into my refactoring. Rather, I combined those I identified. 

How did you initially iterate through the data structure?
I fear my method lacks very much in the way of iterating, meaning it probably could be more efficient.
Where I did use "each" was to break out groups of 3 into their own array, and to add commas to their arrays.

Do you feel your refactored solution is more readable than your initial solution? Why?
My refactored solution is more readable than the intial because it is shorter. It is also easier
to understand because I used comments to describe what each few lines does. I don't see many others 
doing this in phase-0, but I thought it was a best practice(?) In any event, I did this because
I know I have a hard time reviewing others code being a beginner, and I want the poor soul
who comes across my solution to understand the flow of my method.
=end