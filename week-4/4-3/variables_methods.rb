#Release 4.3 Answers. Please view my code for 4.3.1 and 4.3.2 in their respective folders on my GitHub profile
#Ruby code to ask for a full name, give a greeting and ask for a favorite number, modify the number and print
	puts "What is your first name?"
		first = gets.chomp
	puts "What is your middle name?"
		middle = gets.chomp
	puts "Last name, please?"
		last = gets.chomp
puts "Wonderful to meet you #{first} #{middle} #{last}!"
puts "What's your favorite number?"
	fav_num = gets.chomp
	better_num = fav_num.to_f + 1

puts "Well, #{first}, I think #{better_num.to_i} is a bigger and better number!"

#Release 4.3.6 Reflections
=begin 
How do you define a local variable?
	To set a local variable, you use the "=" sign. If you want to set the local variable 
	to something a user has entered in response to a "puts," use "gets" as the variable. 
How do you define a method?
	Defining a method is set by explicitly using "def." This tells ruby to run the block code
	until it reaches an "end" which must be set.
What is the difference between a local variable and a method?
	A local variable creates a single object using the "=" sign. It is better for use when you 
	need a quick output, not intended to be used repeatedly. Methods are more complex and can 
	execute multiple lines of code on many objects. They can accept multiple parameters, which are
	similar to variables in that they may change depending on the program user. 
How do you run a ruby program from the command line?
	Running a ruby program from a command line looks like this "ruby some_program.rb"
How do you run an RSpec file from the command line?
	Running RSpec in the command line looks like "rspec some_spec_file.rb"
What was confusing about this material? What made sense?
	I really enjoyed these exercises. They seemed to be a good review of our Ruby Code 
	Academy introduction. One question that arose from this material was how to make a 
	method ask for user input through the command line, rather than having to enter the parameters 
	when you call the method at the end of the ruby file.  
=end



