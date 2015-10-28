# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

#Pseudocode
#Create a new empty array called has_key_letter
#Test and return the strings with the key letter to the new empty array
  #Test each word for the key letter using string method
  #iterate over the array and run the method
  #Add each key letter containing string to the new array
  #end
#End 
#Print has_key_letter array

# Person 1's solution
#def my_array_finding_method(element_array, letter)
#  has_key_letter = Array.new
#   element_array.each do |element|
#    element = element.to_s 
#    if element.include?(letter) 
#      has_key_letter.push(element) 
#    end 
#   end
#   p has_key_letter
#end

my_array_finding_method(i_want_pets,"e")

def my_hash_finding_method(hash_collection, age)
   pet_is_age = Array.new
   hash_collection.each do |key,value|
    print key
   end
    #if value == thing_to_find
    #  pet_is_age.push(key)
    #end
    # p pet_is_age
  # end 
end

my_hash_finding_method(my_family_pets_ages,3)


# Identify and describe the Ruby method(s) you implemented.
#
#
#



# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#