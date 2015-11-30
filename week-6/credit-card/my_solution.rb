# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:  16 digit number
# Output: determines if valid number, return true / false
# Steps:

#determine valid number
#individual methods (3)
#1: check credit card number, and raise argument error
#2 create a method to double every other digit, starting with the second to last digit (moving backwards), 
#3 define a method to sum all the untouched digits, and the doubled digits. doubled digit numbers must be split
#4 define a method to determine if the sum of the numbers is a multiple of ten, it is a valid number. return true or false



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard
  attr_reader :number
  def initialize(number)
    @card_number = number.to_s
    unless @card_number.length == 16
      raise ArgumentError.new "Card must be 16 numbers in length"
    end
  end
  def check_card
    split_nums = @card_number.split('')
    split_nums.map! { |nums|
      nums.to_i
    }
    every_other = []
    i = 0
    while i < split_nums.length
      split_nums.each_with_index  do |element|
        every_other.push(split_nums[i])
        i += 2
      end
    end
    x = 0
    while x <= split_nums.length
      split_nums.each_with_index do |element|
        split_nums.delete_at(i)
      end
      x += 2
    end
    every_other.delete_if { |element|
      element == nil
    }
    every_other.map! do |num|
      num = num * 2
    end
    every_other.map! { |num|
      num.to_s
    }
    every_other.map! do |num_string|
      num_string.split('')
    end
    every_other.flatten!
    every_other.map! { |num|
      num.to_i
    }
    split_nums.concat(every_other)
    total = 0
    split_nums.each { |num|
      total += num
    }
    if total % 10 == 0
      return true
    else
      return false
    end
  end
end
test = CreditCard.new(4408041234567901)
test.check_card
=end
# Refactored Solution

class CreditCard

  attr_reader :number
  attr_accessor :total

  def initialize(number)
    @card_number = number.to_s
    unless @card_number.length == 16
      raise ArgumentError.new "Card must be 16 numbers in length"
    end
    @total = 0
  end

  def check_card
    split_nums = @card_number.split('')
    split_nums.map!.with_index do |number, index|
      if index.even?
        number.to_i * 2
      else
        number = number
      end
    end

    split_nums.map! { |element|
      element.to_s
    }

    split_nums.map! { |num_string|
      num_string.split('')
    }
    split_nums.flatten!

    total = 0
    split_nums.each { |num|
      total += num.to_i
    }

    if total % 10 == 0
      return true
    else
      return false
    end

  end
end

test = CreditCard.new(4408041234567901)
test.check_card

# Reflection
=begin
    What was the most difficult part of this challenge for you and your pair?
During this challenge, we were caught up on a few simple things. Overall, I think my pair and I enjoyed trying to decide the logic for this more complex program.  
    What new methods did you find to help you when you refactored?
Nothing completely new, but using destructive methods was a concept that was really driven home during this assignment.
    What concepts or learnings were you able to solidify in this challenge?
I need more practice with the attr_reader/accessor/writer. My pair and I used one,but weren't certain of how to use it to the best of our advantage.