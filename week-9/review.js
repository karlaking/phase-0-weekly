// Model a Bingo Board 

// I spent XX hours on this challenge.

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
// PRINT the bingoBoard in a human readable manner 

// # Initial Solution
function call(){
  var bingo = ['B','I','N','G','O'];
  var number = Math.floor((Math.random()*100)+1);
  var letter = bingo[Math.floor(Math.random()*bingo.length)];
  console.log(letterNumber = letter+number);
} 

call();

function check(){
  console.log(letterNumber);
}