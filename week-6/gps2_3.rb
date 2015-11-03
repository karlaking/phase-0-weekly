# Your Names
# 1)Zach
# 2)Karla 

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

# Defining our serving_size_calc method
def serving_size_calc(item_to_make, order_quantity)
  #creating a hash of legal arguments 
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #error_counter = 3
  # defining serving_size and serving_size_mod variables
  # accessing the value connected to a given key within the hash
  serving_size = library[item_to_make]
  # take the second argument and the serving_size variable to find the leftover ingredients
  
  if !library.include?(item_to_make)  
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  
  serving_size_mod = order_quantity % serving_size

  #iterating over the library hash
#   library.each do |food, qty|
#     #conditional statement for case when food key is not present within the hash
#     if library[food] != library[item_to_make]
# #       p error_counter += -1
#       raise ArgumentError.new("#{item_to_make} is not a valid input")
#     end
#   end
  
  # Raise an error when a food that DNE in the library
  
 
  
  

  # return of ArgumentError when food item does not match key in the current hash
#   if error_counter > 0
# #     custom error returned to user
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

# Case senario for return statements 
  #case serving_size_mod
    # when there is no remainde
    if serving_size_mod == 0
    # returns statement that does not have leftover ingredients
      return "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}"
    end
    # return statement that DOES have leftover ingredients - includes a value for the leftover ingredients
    "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}, you have #{serving_size_mod} leftover serving."
end


p serving_size_calc("pie", 7) == "Calculations complete: Make 1 pie" 
p serving_size_calc("pie", 8) == "Calculations complete: Make 1 pie, you have 1 leftover serving."
p serving_size_calc("cake", 5) == "Calculations complete: Make 1 cake"
p serving_size_calc("cake", 7) == "Calculations complete: Make 1 cake, you have 2 leftover serving."
p serving_size_calc("cookie", 1) == "Calculations complete: Make 1 cookie"
p serving_size_calc("cookie", 10) == "Calculations complete: Make 10 cookie"
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?


Did you learn any new methods? What did you learn about them?
I learned of the value_at method, thought it was in a situation where it was not helpful,
it appears to be a method only useful in some case I've not run into yet, as you can
  more simply select a key's value using the following notation library[key] ==>value 

What did you learn about accessing data in hashes? 
This may be a little repetitive, given my response above, but the most straightforward
method to access a value in a hash given its key is using library[key] ==>value
I also learned that you can use many of the array methods for hashes using similar notation.
One example from our code is the use of library.include?(key OR value) to check if 
our bakery library has a food item (in this case, a key) or not. It returns boolean.

What concepts were solidified when working through this challenge?
The use of hashes were solidified for me a great deal. Refactoring step by step, testing, and 
repeating was also a common process I've used throughout the past two weeks. It was
helpful to have the advice of our guide to remind us to be deligent about going line by line,
rather than skipping around. 

=end 

