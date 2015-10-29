# Pad an Array

# I worked on this challenge with: William Brinkert

# I spent [1] hour on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? an array, size of integer, possible value to pad the array, any class
# What is the output? an array 
# What are the steps needed to solve the problem?
# Check length of the array to see if it is less than min_size
# If it is not, we pass back the array
# If it is less, we must pad the array 
  # Find the difference between elements in the array and the min_size
  # Create a variable to pad the array 
  # Add the variable to the array until it equals the min_size
# Return modified array 
# End 
 #1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  diff = min_size - array.length 
  if diff <= 0 
    return array 
  else diff.times {array.push(value)}
    return array 
  end
end
=end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  diff = min_size - array.length
  if diff <= 0 
    return new_array
  else diff.times {new_array.push(value)}
    return new_array
  end
end
=end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  diff = min_size - array.length 
  diff <= 0 ? array : diff.times {array.push(value)}
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  diff = min_size - array.length
  diff <= 0 ? new_array : diff.times {new_array.push(value)}
  new_array
end

=begin
# 4. Reflection
Were you successful in breaking the problem down into small steps?
  My pair and I were very successful in breaking down the method into discrete
steps. We more or less stuck to the pseudocode, with the exception of a few lines.

Once you had written your pseudocode, were you able to easily translate it into code? 
What difficulties and successes did you have?
  It was not difficult to move from the pseudocode stage to our method. The only 
issue we encountered was in creating the new array. We identified a quick solution,
but it did not pass the Rspec. The reason it did not pass had to do with creating a 
new instance. It was a "learning moment." 

Was your initial solution successful at passing the tests? If so, why do you think that is? 
If not, what were the errors you encountered and what did you do to resolve them?
  The answer here will be a bit redundant, but, the only issue we encountered was 
when we tried to set a new array to equal the old array for our non-destructive method. 
This did not create a new instance, rather, and caused the Rspec to fail. We worked around
the problem by creating a new empty array and using .dup.

When you refactored, did you find any existing methods in Ruby to clean up your code?
  We were about to refactor using the short hand for an if statement( ? and : )

How readable is your solution? Did you and your pair choose descriptive variable names?
  Our initial solution is more human readable, using if and return, while the refactored method
is short and efficient. We chose variable names that were not creative, but logical. 

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods modify the original data, while non-destructive methods either make a copy
of and modify the copy. 

=end