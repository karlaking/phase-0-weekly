# I spent hours on this challenge.
# I worked on this challenge by myself.
# Minimum Viable Product
	# A method that accepts a collection of names and outputs those names into random
	# groups of 4 or 5 

# Input: An array of names
# Output: A collection of arrays containing 4 or 5 names

# Pseudocode:
	# Randomly mix the names in the array
	# Sort those names into arrays of 
	# Create an if, then statement to disperse members from an array if it is less than the min group size. 

# Initial Solution
island_foxes = ['Syema Ailia', 'Alan Alcesto', 'Daniel Andersen', 'James Artz', 'Darius Atmar', 'Brian Bensch', 'Nicola Beuscher', 'Kris Bies', 'Alex Blair', 'Logan Bresnahan', 'William Brinkert', 'Un Choi', 'Scott Chou', 'Bernice Anne W Chua', 'Abraham Clark', 'Jon Clayton', 'Kevin Corso', 'Jacob Crofts', 'Emmanuel Kaunitz', 'Amaar Fazlani', 'Solomon Fernandez', 'Edward Gemson', 'Jamar Gibbs', 'Chris Gomes', 'Will Granger', 'Christopher M. Guard', 'Peter H.', 'Ryan Ho', 'Igor Kazimirov', 'Walter Kerr', 'Karla King', 'Becky Lehmann', 'Malia Lehrer', 'Carolina Medellin', 'Timothy Meixell', 'Chris Miklius', 'Joshua Monzon', 'Shea Munion', 'Bryan Munroe', 'Trevor Newcomb', 'Aleksandra Nowak', 'Fatma Ocal', 'Van Phan', 'Luis Fernando Plaz', 'Natalie Polen', 'Alicia Quezada', 'Jessie Richardson', 'Nimi Samocha', 'Zach Schatz', 'Tal Schwartz', 'Pratik Shah',  'Josh Shin', 'Shawn Spears', 'Sasha Tailor', 'Nil Thacker', 'Natasha Thapliyal', 'Sabrina Unrein', 'Brian Wagner', 'Clinton Weber', 'Gregory Wehmeier', 'Michael Whelpley'] #, 'Alexander Williams', 'Peter N Wood', 'Ryan Zell']
test =["apple", "pear", "banana", "orange", "pumpkin", "otter", "sea lion", "ape", "kimberly", "jacob", "luke", "hannah"]

def acct_groups(members, group_size)
	mix = members.shuffle
	min = 4
	p mix.length
	if mix.length > group_size
		groups = mix.each_slice(group_size).to_a
	end
	p groups
	p groups.size


end


		
acct_groups(island_foxes, 5)
#acct_groups(test, 2)



# Reflection
# What was the most interesting and most difficult part of this challenge?
	# The most difficult part of this challenge for me was figuring out how to delete and move
	# students from arrays. I still have not figured this out, but plan to update my code after getting
	# some help.
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
	# I do, but I am finding it difficult to translate it into a meaningful and functioning code. 
	# Similar to learning any other language, I know what I want to say, but need the words (or methods
	#	and syntax) to say it!	
# Was your approach for automating this task a good solution? What could have made it even better?
	# This may be better suited to using a hash. I think the options of reassigning students
	# may be easier, given the relative ease of updating a key's value.
# What data structure did you decide to store the accountability groups in and why?
	# I chose an array in the beggining, because it seems the only attribute, group number,
	# would not be important. I am still not sure if this was the right decision.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
	# My code is admittedly simple for the time being, and lacks any true reason for refactoring.