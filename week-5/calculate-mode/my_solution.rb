
# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
# 1. Initial Solution
=begin
def mode(array)
  frequencies = Hash.new
  temp_hash = Hash.new
  
  frequencies[array[0]] = 0
  
  array.each do |element|
    frequencies.dup.each do |key,value|
      if element == key 
        puts "element: #{element}"
        frequencies[key] += 1
        puts "#{element} occurrence: #{frequencies[key]}"
      else 
        puts "element: #{element}"
        puts "found #{element} for the first time!"
        frequencies[element] = 1
        puts "#{element} occurrence: #{frequencies[key]}"
        #temp_hash = {element => 1}
        #puts "temp_hash: #{temp_hash}"
        puts
      end
      #puts "frequencies is: #{frequencies}"
      #puts
    end
    #frequencies.merge!(temp_hash)
    puts "============================================="
    puts "frequencies is: #{frequencies}"
    puts "============================================="
    puts
  end
end

mode([1,2,3,3])         # => [3]
mode([4.5, 0, 0])       # => [0]
mode([1.5, -1, 1, 1.5]) # => [1.5]
mode([1,1,2,2])         # => [1,2]
mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
mode(["who", "what", "where", "who"]) # => ["who"]
mode([4, 4, 5, 5, 6, 6, 6, 7, 5]) # => [5,6]
=end

# 3. Refactored Solution
def mode(array)
  frequencies = Hash[array.map {|x| [x, 0]}]
  p frequencies
  array.each do |element|
    frequencies[element] += 1
  end

  mode = Array.new
  frequencies.each do |key, value|
    if value == frequencies.values.sort!.reverse[0]
      mode.push(key)
    end
  end
  return mode
end

puts mode([1,2,3,3])         # => [3]
#puts mode([4.5, 0, 0])       # => [0]
#puts mode([1.5, -1, 1, 1.5]) # => [1.5]
#puts mode([1,1,2,2])         # => [1,2]
#puts mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
#puts mode(["who", "what", "where", "who"]) # => [who]



# 4. Reflection
=begin

Which data structure did you and your pair decide to implement and why?
Nil and I used a combination of data structures. We created a new hash to count the 
frequencies, then output an array of the top key frequencies. We used a hash, because 
we needed to create pairs of keys and frequencies. We had to output an array to sort.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Our initial pseudocode was NOT what we went with for a final solution. Information 
we gathered changed the direction of our code. Since you are not able to itteratively
add to a hash, we switched to using different methods. Therefore, last time I paired
we created more exact pseudocode because we were more familiar with the methods requirements.
What issues/successes did you run into when translating your pseudocode to code?
We ran into the issue that our class of a hash was not sortable in the way we needed it to be.
This caused us to go a completely different direction to solve the challenge. 
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We found the method .map to address a problem of iteration. It is awesome and I plan to use it more often. 

=end