# Research Methods

# I spent 3.5 hours on this challenge.

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

# Person 1's solution: Karla 
def my_array_finding_method(element_array, letter)
  has_key_letter = Array.new
   element_array.each do |element|
    element = element.to_s 
    if element.include?(letter) 
      has_key_letter.push(element) 
    end 
   end
   p has_key_letter
end

my_array_finding_method(i_want_pets,"t")

#Pseudocode
#Create a new empty array called pet_is_age
#Test and return the key's with a value matching the age input  
  #Test each word for the age value using the == method
  #iterate over the array and run the method
  #Add each key to the new array
  #end
#End 
#Print the pet_is_age array

def my_hash_finding_method(hash_collection, age)
   pet_is_age = []
   hash_collection.each do |key,value|
    if value == age
      pet_is_age.push(key)
    end
   end
   p pet_is_age
end

my_hash_finding_method(my_family_pets_ages, 3)

=begin 
# Release 1: Identify and describe the Ruby method you implemented.
# Identify and describe the Ruby method(s) you implemented.
The unique ruby methods I used for my assignments were .push, include?, and .to_s.
.push adds an element to an array. 
include? will check an element for the presence of a specified character. The one
hitch with .include? is that it is a string method, meaning it will not run on 
elements of any other class. That is where the .to_s method came in. Because the 
array contains integers, we must turn them into strings before they can be successfully
evaluated. 

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?


