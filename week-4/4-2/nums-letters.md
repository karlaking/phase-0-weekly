
###4.2 
### What does puts do?
`put` simply prints out the output of the program ran. It WILL NOT return the output for future access. 

### What is an integer? What is a float?
Integers are whole numbers. Decimals are not found in integers. They can be negative numbers, or 0. Integers will be rounded down when used in calculations. A float, or floating place decimal number, allows a number to have as many decimal points as necessary

### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
The difference between performing calculations with floats or integers lies in how to deal with the remainder of whole numbers when they do not have on-the-nose whole outputs. Whole number calculations will always round the output down to the nearest integer. 

Calculate and print hours in a year and minutes in a decade
```ruby
puts 24*365
puts (24*60)*(365*10)
```

###To view the code for 4.2.1, 4.2.2, and 4.2.3, look at the links in my 4.2 folder in GitHub.

###How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles basic arithmetic using the expected operators with expected results. That is what makes it so wonderful! The only exception is when using integers, as discussed above, remainders are an issue, and should be converted to a float for division. 

###What is the difference between integers and floats?		
There are quite a few differences between the two. One major difference is that integers may not be divided with a precise output. Another is that floats can carry decimals. Each may be more useful in certain situations.

###What is the difference between integer and float division?
Integer division produces integers. This unique situation requires rounding when a remainder exists. Ruby always rounds down in this case.

###What are strings? Why and when would you use them?
Strings are a data type that can be made up of letters, words or numbers. They are always wrapped in quotes. One is able to perform arithmetic on strings, however, there are strict guidelines. For instance, when a number is wrapped in quotes, as a string, it cannot be multiplied or divided by another string. 

###What are local variables? Why and when would you use them?
Local variables are those defined within the program itself and not accessed globally. They are helpful when you want more control over a variable and do not want to worry about changing them and messing up other programs.

###How was this challenge? Did you get a good review of some of the basics?
This was a review of some of the very basic basics. The three challenges were a bit repetative. I thought the Ruby Code Academy intro was a bit more helpful, as it is useful to show progressively more difficult code as you move through challenges. 