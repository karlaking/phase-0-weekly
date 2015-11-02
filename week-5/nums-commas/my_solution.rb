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

# 3. Reflection