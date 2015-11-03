# I spent hours on this challenge.
# I worked on this challenge by myself.
# Minimum Viable Product
	# A method that accepts a collection of names and outputs those names into random
	# groups of 4 or 5 

# Input: An array of names
# Output: A collection of arrays containing 4 or 5 names

# Pseudocode:
	# Randomly mix the names in the array
	# Sort those names

# Initial Solution
island_foxes = ['Syema Ailia', 'Alan Alcesto', 'Daniel Andersen', 'James Artz', 'Darius Atmar', 'Brian Bensch', 'Nicola Beuscher', 'Kris Bies', 'Alex Blair', 'Logan Bresnahan', 'William Brinkert', 'Un Choi', 'Scott Chou', 'Bernice Anne W Chua', 'Abraham Clark', 'Jon Clayton', 'Kevin Corso', 'Jacob Crofts', 'Emmanuel Kaunitz', 'Amaar Fazlani', 'Solomon Fernandez', 'Edward Gemson', 'Jamar Gibbs', 'Chris Gomes', 'Will Granger', 'Christopher M. Guard', 'Peter H.', 'Ryan Ho', 'Igor Kazimirov', 'Walter Kerr', 'Karla King', 'Becky Lehmann', 'Malia Lehrer', 'Carolina Medellin', 'Timothy Meixell', 'Chris Miklius', 'Joshua Monzon', 'Shea Munion', 'Bryan Munroe', 'Trevor Newcomb', 'Aleksandra Nowak', 'Fatma Ocal', 'Van Phan', 'Luis Fernando Plaz', 'Natalie Polen', 'Alicia Quezada', 'Jessie Richardson', 'Nimi Samocha', 'Zach Schatz', 'Tal Schwartz', 'Pratik Shah',  'Josh Shin', 'Shawn Spears', 'Sasha Tailor', 'Nil Thacker', 'Natasha Thapliyal', 'Sabrina Unrein', 'Brian Wagner', 'Clinton Weber', 'Gregory Wehmeier', 'Michael Whelpley'] #, 'Alexander Williams', 'Peter N Wood', 'Ryan Zell']
test =["apple", "pear", "banana", "orange", "pumpkin", "otter", "sea lion", "ape", "kimberly", "jacob", "luke", "hannah"]

def acct_groups(members, group_size)
	mix = members.shuffle
	p mix.length
	if mix.length > group_size
		groups = mix.each_slice(group_size).to_a
	else 
		
	end
	p groups
	p groups.length
end

		
acct_groups(island_foxes, 5)
#acct_groups(test, 2)
# Refactored Solution
=begin
def acct_groups(members)
	members.shuffle 
	if members.length > 5
	groups = [members.each_slice(5).to_a]	
	else 
		return groups
	end
end
print groups
=end 

# Reflection
# What was the most interesting and most difficult part of this challenge?
=begin
Do you feel you are improving in your ability to write pseudocode and break the problem down?
Was your approach for automating this task a good solution? What could have made it even better?
What data structure did you decide to store the accountability groups in and why?
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
=end