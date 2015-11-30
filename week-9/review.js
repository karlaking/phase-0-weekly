// Model a Bingo Board 

// I spent 1.5 hours on this challenge.

// Release 0: Pseudocode
// DEFINE function 'call' that accepts no parameters 
//   SELECT a random letter from the string Bingo
//     SELECT a random number between one and 100
//       JOIN the random letter and number together and assign it to 'call'
// DEFINE function 'check' that accepts a bingoBoard of nested arrays
//   IF 'call' is in the bingoBoard
//     THEN update the bingoBoard to have 'x' in place of the 'call'
//   ELSE
//     do nothing

// # Solution

var letterNumber 

function call(){
  var bingo = ['B','I','N','G','O'];
  var number = Math.floor((Math.random()*100)+1);
  var letter = bingo[Math.floor(Math.random()*bingo.length)];
  letterNumber = letter+number
} 



function check(bingoBoard){
  call();
  var arrayLength = bingoBoard.length;
	for (var i = 0; i < arrayLength; i++) {
    	for (var p = 0; p < 5; p++){
    		 if (bingoBoard[i][p] === letterNumber)
    		 	bingoBoard[i][p]= 'X';
		}
		return bingoBoard 
	}
}

check([['B47', 'I44', 'N71', 'G8', 'O88'],
        ['B22', 'I69', 'N75', 'G65', 'O73'],
        ['B83', 'I85', 'N97', 'G89', 'O57'],
        ['B25', 'I31', 'N96', 'G68', 'O51'],
        ['B75', 'I70', 'N54', 'G80', 'O83']]);
 
//Reflection 
// What concepts did you solidify in working on this challenge? 
// 	How to access values within nested arrays using for loops in javascript
// 	How to execute an if statement on nested values
// 	How to create global variables (letterNumber)
// What was the most difficult part of this challenge?
// 	The length of the logic. I actually used a short cut by adding the letters B-G to the numbers in the checker board, 
// 	rather than using taking the steps to execute code to search for the index in each element
// 	associated with BINGO. It was originally a solo challenge, so it makes sense it was very long.
// Did you solve the problem in a new way this time?
// 	Other than the shortcut, no. I do find that despite JS being a more seemingly 'difficult' language
// 	I am getting better at looping naturally without second guessing myself.
// Was your pseudocode different from the Ruby version? What was the same and what was different? 
// 	My pseudocode was way better this time. I had a pair recently teach me the manner I've
// 	written it in here, and find it takes longer, but is easier to translate, removing much
// 	of the guess work once you begin coding. 