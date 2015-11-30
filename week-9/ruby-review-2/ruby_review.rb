# Reverse Words


# I worked on this challenge with Peter Wood.
# This challenge took me .25 hours.

# Pseudocode
=begin

DEFINE function 'reverse_words' which accepts 1 parameter: 'string_in'
  CREATE string 'string_out'
  CREATE array 'words'
    ITERATE over 'string_in'
      PASS each word to 'words'
  ITERATE over 'words'
    REVERSE order of each element
    PASS each element to 'string_out'

=end
# Initial Solution

# def reverse_words( string_in )
#   string_out = ""
#   words = string_in.split(" ")
#   words.map! do |i|
#     i.reverse
#   end
#   string_out = words.join(" ")
#   return string_out
# end


# Refactored Solution

def reverse_words( string_in )
  words = string_in.split(" ")
  words.map! do |i|
    i.reverse
  end
  words.join(" ")
end

# Reflection
=begin
What concepts did you review in this challenge?
I reviewed how to use simple looping on an array and the destructive enumerable .map!
What is still confusing to you about Ruby?
Nothing arose here, this was a very simple exercise, selected because our other challenge so very confusing.
What are you going to study to get more prepared for Phase 1?
Objects in ruby! 
=end