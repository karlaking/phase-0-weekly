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

def acct_groups(array,group_size)
  mix = array.shuffle	
  cohort_size = mix.size 	
  extras = cohort_size%group_size 
  extra_members = mix.pop(extras)
  while mix.length > 0
  	groups = mix.pop(group_size).join 
  	p "These are your group members: #{groups}"
  end 
  p "You guys should join an existing group: #{extra_members.join}"
end

acct_groups(island_foxes, 5)
acct_groups(test, 2)


# Reflection
# What was the most interesting and most difficult part of this challenge?
	# This challenge really tripped me up. I had difficulty sticking with one process,
	# because there was a lot of freedom in how to solve it and a lot of moving parts.
	# I adopted and abandoned several attempts that came close. What I produced still isn't
	# perfect, but it is the best of all of them, believe it or not!
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
	# I do, but I am finding it difficult to translate it into a meaningful and functioning code. 
	# Similar to learning any other language, I know what I want to say, but need the words (or methods
	#	and syntax) to say it!	
# Was your approach for automating this task a good solution? What could have made it even better?
	# I attempte using a hash, but had difficulty iterating over the values to give them
	# group numbers and breaking out the names to their own arrays for printing. 
# What data structure did you decide to store the accountability groups in and why?
	# I chose an array in the end, because it seems the only attribute, group number,
	# would not be important enough to assign. I am still not sure if this was the right decision.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
	# My code changed many times through out the process, and I naturally refactored as I went through.