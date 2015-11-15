// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Fatma.

// Pseudocode
  // Create a function named separateComma 
  // Convert the integer to a string
  // Reverse the string
  // Create an empty array for spliting the characters into string of three 
  // Use for loop to run the code continuously.
  // Define the for loop argument to define a counter with 0 value, define a variable characters length that represents the length of the reversed integer. Increase the counter by 3. The for loop should continue as long as the counter is less than the length of the characters. Capture the three characters of the string and add them to the array. Join the stings in the array into a string  separated by commas. Once the counter is equal to or larger than the character length, the for loop stops.  
  // Create another variable for the output 
  // Reverse the output 
  // Print the new string 

  // Input: integer is the only argument 
  // Output: comma separated string 


// Initial Solution

// function separateComma(integer) {
//   var string = integer.toString() //   "1569743"
//   var reverse = string.split("").reverse().join(""); // Array [ '1', '5', '6', '9', '7', '4', '3' ] -> Array [ '3', '4', '7', '9', '6', '5', '1' ] -> 3479651
//   var chunks = [];
//   for (var i = 0, charsLength = reverse.length; i < charsLength; i += 3) 
//   {
//     chunks.push(reverse.substring(i, i + 3)); // ['347','965','1']
//     var commas = chunks.join(',');  // 347,965,1
//   }
  
//   var out = commas.split('').reverse().join('');
//   console.log(out);

//  }
//  separateComma(1569743) 

 // Refactored Solution
function separateComma(integer) {
  var string = integer.toString() //   "1569743"
  var reverse = string.split("").reverse().join(""); // Array [ '1', '5', '6', '9', '7', '4', '3' ] -> Array [ '3', '4', '7', '9', '6', '5', '1' ] -> 3479651
  var chunks = [];
  for (var i = 0, charsLength = reverse.length; i < charsLength; i += 3) 
  {
    chunks.push(reverse.substring(i, i + 3)); // ['347','965','1']
    var commas = chunks.join(',');  // 347,965,1
  }
  console.log(commas.split('').reverse().join(''));

 }
 separateComma(1569743) 


// Your Own Tests (OPTIONAL)



// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the 
// problem differently?
//   We approached the challenge in the same manner. Pseudocode rules require this step be the
//   same regardless of language.

// What did you learn about iterating over arrays in JavaScript?
//   I got practice with the structure for loop using the following syntax/format 
//   for {(var i=0;array.length>i;i++){array[i] <action>}};

// What was different about solving this problem in JavaScript?
//   I don't think there were many differences, other than the actual programming language. 
//   It seemed faster this time having done it in Ruby. 
  
// What built-in methods did you find to incorporate in your refactored solution?
//   string.split('').reverse().join(); chained together to reverse a string. 