// PSEUDOCODE
// Objective: Create a program for doing various math calculations.

// Input: numbers in a list
// Output: Sum, mean, or median of the list of numbers
// Steps: 
// Define a method called "sum"
// Add all the numbers in the list
// Return the sum

// Define a method called "mean"
// Add all the numbers in the list
// Divide sum by number of numbers in the list
// Return the mean

// Define a method called "median"
// Arrange numbers in the list in ascending order
// IF there is an odd number of numbers in the list
// 		return the number in the middle
// ELSE return the mean of the two numbers in the middle

// Initial Solution 
function sum(numbers){
	total = 0
	for (var i = 0;  i < numbers.length ;i++){
		 total = (numbers[i] += total);
	};
	console.log(total);
}


function mean(numbers){
	var sum = 0
	for (var i = 0;  i < numbers.length ;i++){
		 sum = (numbers[i] += sum);
	}
	var average = (sum/numbers.length);
	console.log(average);
}

function median(numbers){
	var sort = numbers.sort(function(a, b){return a-b});
	var middle_index = (numbers.length/2); 
	var middle_number = (sort[middle_index]-1);
	console.log(middle_number);
}

// Driver Code
var numsArray = [1,2,3,4,5,6,7,8,9,10,42,93] 
sum(numsArray)
mean(numsArray)
median(numsArray)

