# 0. Psuedocode

# Create a new list
# OUTPUT: A hash that will hold the grocery items
#Create an empty hash

# Add an item with a quantity to list
# INPUT: Item with quantity 
# OUTPUT: Updated version of the same list
# Add quantity and item to hash

# Remove an item from the list
# INPUT: Grocery List with Contents
# OUTPUT: Grocery List minus the Removed Item
# Remove quantity and item from the hash

# Update quantities for items in list
# INPUT: Grocery List with Contents
# OUTPUT: Grocery List with one Added Item
# Changing quantity in hash for a previously existing item

# Print the list
# INPUT: Grocery List with Contents
# OUTPUT: Displayed Grocery List with Contents and Quantity
# Print user friendly list 
# Desired display: Qty / Contents

# Release 2 

def new_list
  Hash.new
end

def add_items(grocery_list, item, quantity)
  #grocery_list[item] = quantity
  #grocery_list.merge(item => quantity)
  to_add = {item => quantity}
  grocery_list.merge!(to_add)
  return grocery_list
end

def remove_item(grocery_list, item, quantity)
  grocery_list.delete(item) { |key, value| key == item}
  grocery_list.delete(quantity) { |key, value| key == item}
end

def update_quantities(grocery_list, item, quantity)
if grocery_list.has_key?(item) 
  grocery_list[item] = quantity
  end
end 
  
def print_list(grocery_list)
  puts "Here is your grocery list:"
  grocery_list.each do |item, quantity| 
    p "#{quantity} #{item}" # nil
  end
end
    
grocery_list = new_list

add_items(grocery_list, "Lemonade", 2)
add_items(grocery_list, "Tomatoes", 3)
add_items(grocery_list, "Onions", 1)
add_items(grocery_list, "Ice Cream", 4)
p grocery_list
remove_item(grocery_list, "Lemonade", 2)
p grocery_list
update_quantities(grocery_list,"Ice Cream",1)
p grocery_list
print_list(grocery_list)
