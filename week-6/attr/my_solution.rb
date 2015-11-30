#Attr Methods

# I worked on this challenge by myself:

# I spent 1 hour on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_accessor :name

  def initialize
    @name = Karla
  end
end


class Greetings
  def initialize
    @name_data = NameData.new
    p " #{@name}"
  end
end

namedata = Receiver.new
receiver.use_data #=> 10


# Reflection
# Release 1 
#What are these methods doing?
  	#The methods are defining attribute of the instance, and simultaneously setting methods that can overwrite the original outputs.
#How are they modifying or returning the value of instance variables?
  	#By explicity setting the instance variables to equal new inputs.  

# Release 2
# What changed between the last release and this release?
    # An attribute reader which creates the ability to read the attribute for age passed in outside of the class.
# What was replaced?
    # Defining an instance variable for age. 
# Is this code simpler than the last?
    # Just slightly so! I am beginning to see how it can be improved.

# Release 3 
#What changed between the last release and this release?
  	# An attribute writer was adding for the age argument. Making it able to be overwritten more quickly.
#What was replaced?
  	#line 68 no longer needs to call a method to overwrite the attribute!
#Is this code simpler than the last?
  	# Absolutely! Maybe more dangerous since the attribute may be overwritten, but more simple for sure.

# Reflection
#What is a reader method?
	# A reader method allows you to access an attribute of an instance variable outside of the class. It is viewable only.
#What is a writer method?
	# A writer method allows you not only to access an attribute of an instance variable outside of the class, but it allows you to overwrite it with different information.
#What do the attr methods do for you?
	# Grant access to attributes of instances outside of a class. I've been wondering how to do this since week 5. 
#Should you always use an accessor to cover your bases? Why or why not?
	# Absolutely not. It poses security threats to your code. Any Tom, Dick or Harry code overwrite or view your data when an attr_accessor is set. 
#What is confusing to you about these methods?
	# I am still uncertain of how the initialize method fits into the flow of using these methods. I need to practice more with them to supplement what I've read, because it isn't translating easily into funcitoning code. 