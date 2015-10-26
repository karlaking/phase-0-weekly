# Analyze the Errors

# I worked on this challenge by myself.
# I spent [2] hours on this challenge.

# --- error -------------------------------------------------------

"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => Line 8
# 3. What is the type of error message?
# => syntax error 
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected '=', expecting end-of-input
# 5. Where is the error in the code?
# => After "I'm going home" = and before cartmans_phrase 
# 6. Why did the interpreter give you this error?
# => You must define a variable to the RIGHT of the equal sign

south_park = ""
# errors.rb:35:in `<main>': undefined local variable or method `south_park' for main:Object (NameError)
# 1. What is the line number where the error occurs?
# =>  Line 35
# 2. What is the type of error message?
# =>  Name error 
# 3. What additional information does the interpreter provide about this type of error?
# => south_park is not undefined
# 4. Where is the error in the code?
# => south_park is notassigned to a value
# 5. Why did the interpreter give you this error?
# => south_park is not defined properly

# --- error -------------------------------------------------------

def cartman(); puts "Revenge is so very, very sweet."; end
# errors.rb:50:in `<main>': undefined method `cartman' for main:Object (NoMethodError)
# 1. What is the line number where the error occurs?
# => line 50
# 2. What is the type of error message?
# => no method error is given
# 3. What additional information does the interpreter provide about this type of error?
# => cartman is the undefined method
# 4. Where is the error in the code?
# => cartman() isn't a valid method, undefined
# 5. Why did the interpreter give you this error?
# => It tried to call the cartman method, but did not find it

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()#'I hate Kyle')
# errors.rb:65:in `cartmans_phrase': wrong number of arguments (1 for 0) (ArgumentError)
# 1. What is the line number where the error occurs?
# => line 65
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => There is 1 argument, when 0 were expected
# 4. Where is the error in the code?
# => 
# 5. Why did the interpreter give you this error?
# => It was not expecting an argument, but got 'I hate Kyle'

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says "Shut up fat boy!"
# errors.rb:84:in `cartman_says': wrong number of arguments (0 for 1) (ArgumentError)
# 1. What is the line number where the error occurs?
# =>Line 84
# 2. What is the type of error message?
# =>ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# =>cartman_says method recieved 0 arguments and was expecting 1
# 4. Where is the error in the code?
# =>  Line 88
# 5. Why did the interpreter give you this error?
# => The old missing argument trick!



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming', 'Kenny')
# errors.rb:105:in `cartmans_lie': wrong number of arguments (1 for 2) (ArgumentError)
# 1. What is the line number where the error occurs?
# =>Line 105
# 2. What is the type of error message?
# =>ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# =>wrong number of arguments
# 4. Where is the error in the code?
# => line 190
# 5. Why did the interpreter give you this error?
# => Too many arguments provided!

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5 #5 * "Respect my authoritay!"
# errors.rb:124:in `*': String can't be coerced into Fixnum (TypeError)
# 1. What is the line number where the error occurs?
# => Line 124
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => the multiplication operator cannot be followed by a string
# 4. Where is the error in the code?
# => Line 124
# 5. Why did the interpreter give you this error?
# => Fatal attempt to multiply a number by a string. Not possible!

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/10

# errors.rb:139:in `/': divided by 0 (ZeroDivisionError)
# 1. What is the line number where the error occurs?
# => Line 139
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => incorrect use of '/'
# 4. Where is the error in the code?
# Line 139
# 5. Why did the interpreter give you this error?
# =>  it is not mathmatically possible to divide by zero.
# --- error -------------------------------------------------------

require_relative "cartmans_essay.rb" #fixed by creating such a file and changing extension to `.rb`
# errors.rb:155:in `require_relative': cannot load such file -- /Users/jonclayton/phase-0/week-4/errors/cartmans_essay.md (LoadError)
# 1. What is the line number where the error occurs?
# => Line 155
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => it states where require_relative is attempting to load from
# 4. Where is the error in the code?
# =>  It's in line 155
# 5. Why did the interpreter give you this error?
# => The file it was called to load was not where it should be!


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#How did you figure out what the issue with the error was?
#To find out error issues, if I was uncertain given the output, I would run and test the code 
#and retry using different inputs until I made the program run. 
#Were you able to determine why each error message happened based on the code?
#Yes
#When you encounter errors in your future code, what process will you follow to help you debug?
#Read error messages correctly and experiment with different inputs
#Google-ing/ researching different error messages can also prove helpful if I am really stuck!