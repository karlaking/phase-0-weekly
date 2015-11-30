# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Shawn Spears.

# 0. total Pseudocode
#Accept an array of numbers and output sum of the array
#Access each index and add it to variable sum 
#Print sum 

# Steps to solve the problem.


# 1. total initial solution
def total(array)
  sum = 0
  array.each {|i| sum += i}
  p sum
end 

total([1,2,3])

# 3. total refactored solution

def total(array)
  p array.reduce(:+)
end 

total([1,2,3])

# 4. sentence_maker pseudocode
#Accept an array of words and output a sentence
#Access each word and add it to variable sentence
#Print the sentence 


# 5. sentence_maker initial solution
def sentence_maker(array)
  p array.reduce(:+)
end 

sentence_maker(['Hi!','from','Shawn','and','Karla'])


# 6. sentence_maker refactored solution
def sentence_maker(array)
  p array.join(" ").capitalize + "."
end

sentence_maker(["hello", "world"])
