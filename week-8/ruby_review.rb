# Numbers to English Words


# I worked on this challenge by myself.
# This challenge took me 2 hours.


# Pseudocode
# CREATE hash 'first_digit' with names as values and numbers as keys
# CREATE hash 'second_digit' with names as values and numbers as keys
# CREATE hash 'tens_digit' with names as values and numbers as keys
# DEFINE function 'in_words' that accepts an integer 1 - 99
# 	IF int is only one digit long
# 		PRINT its associated value in 'second_digit'
# 	ELSE IF int begins with a 1  
# 		PRINT its associated key from 'tens_digit'
#   ELSE IF 
#		JOIN and PRINT the first index key's value from 'first_digit' with the second index key's value from 'second_digit'
# 	ELSE 
# 		PRINT 'Please enter a number under 100.'

# Initial Solution
@first_digit = {9=>'nintey',8=>'eighty',7=>'seventy',6=>'sixty',5=>'fifty',4=>'forty',3=>'thirty',2=>'twenty'}
@tens_digit = {10=>'ten',11=>'eleven',12=>'twelve',13=>'thirteen',14=>'fourteen',15=>'fifteen',16=>'sixteen',17=>'seventeen',18=>'eighteen',19=>'ninteen'}
@second_digit = {9=>'nine',8=>'eight',7=>'seven',6=>'six',5=>'five',4=>'four',3=>'three',2=>'two',1=>'one'}

def in_words(int)		
	 string = int.to_s
	 array = string.split('') 
	 if string.length == 1
	 	p @second_digit[int]	
	 elsif int[0] == 1
	  	p @tens_digit[int]
	 elsif
	 	p @first_digit[int[0]]+@second_digit[int[1]]
     else 
     	p 'Please enter a number under 100'
     end 
end 

# Refactored Solution 
@first_digit = {9=>'nintey',8=>'eighty',7=>'seventy',6=>'sixty',5=>'fifty',4=>'forty',3=>'thirty',2=>'twenty'}
@tens_digit = {10=>'ten',11=>'eleven',12=>'twelve',13=>'thirteen',14=>'fourteen',15=>'fifteen',16=>'sixteen',17=>'seventeen',18=>'eighteen',19=>'ninteen'}
@second_digit = {9=>'nine',8=>'eight',7=>'seven',6=>'six',5=>'five',4=>'four',3=>'three',2=>'two',1=>'one'}



def in_words(int)		
	 string = int.to_s
	 array = string.split('') 
	 if string.length == 1
	 	p @second_digit[int]	
	 elsif int[0] == 1
	  	p @tens_digit[int]
	 elsif
	 	p @first_digit[int[0]]+@second_digit[int[1]]
     else 
     	p 'Please enter a number under 100'

# Reflection
# What concepts did you review or learn in this challenge?
# 	I reviewed how to create hashes and data type conversions for specific methods. 
# What is still confusing to you about Ruby?
#  Executing nested code within else statements. I was not able to have my third elsif perform the function I asked of it. I will look for a solution, and perhaps suspect I need to set another if statement to test for its case of being a double digit number that DOES NOT begin with one.
# What are you going to study to get more prepared for Phase 1?
# 	Nested arrays and hashes and accessing their values to pass or print.  