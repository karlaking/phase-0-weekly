// This is a solo challenge


// Your mission description: Fill in a randomly designed color board using a crayon box. 
// Color in one of three unique designs using a crayon box key
// Overall mission: Create a picture
// Objects: Crayon Box, Color board
// Functions: Color

// Create an object coloring board 
// 	Create a hash with grid values for the key and the string 'blank' for the value.
//  Alternatively, create an array with with the grid values only. 
//  The grid values should be a letter between A-M and a number 1-13.
// Create an object crayon box
// 	Define an array of 12 colors
// 	Define a function color to update the coloring board hash to include values to include a randomly selected color from the crayon box array.

// Initial Code

var array1 = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n']
console.log(array1);

var array2 = []
for (var i = 1; i <= 14; i++) {
   array2.push(i);
};
console.log(array2);


var combos = [];
array1.forEach(function(a1){
  array2.forEach(function(a2){
    combos.push(a1 + a2);
  });
});

console.log(combos);

var crayonBox = ['Yellow Green','Fluorescent Orange','Asparagus', 'Green','Fluorescent Pink', 'Wisteria', 'Sky Blue', 'Fluorescent Yellow','Gray','Blue','Golden Yellow','Carnation Pink'];

var oneColor = crayonBox[Math.floor(Math.random() * crayonBox.length)];
console.log(oneColor);


// function color(){
// 	var colorGrid = {};
// 	combos.forEach(function(a1){
// 	colorGrid.push(a1);
// });
// };
// color();


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//