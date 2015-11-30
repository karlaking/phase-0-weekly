# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2],["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |x|
  if x.is_a? Array
    x.map! do |y|y +5
    end    
  else 
    x + 5
end 
end
p number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

#Reflection
# What are some general rules you can apply to nested arrays?
# Your ability to access individual elements within nested arrays remains somewhat constant. Using the same syntax we learned originally, we simply have to use brackets to select elements within elements as seen in the first exercise.

#What are some ways you can iterate over nested arrays?
# Using is_a? Array with map is a good way to check all the elements within a nested array, whether they're in an array themselves, or solo. Another method is to flatten the array, that is if you do not need the original nested in place.

#Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#No, though I wish there were/hope they exist for iterating over nested hashes. It is a real pain in the neck!
  