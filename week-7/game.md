###Solo Challenge: Game

 ###Your mission description: Fill in a randomly designed color board using a crayon box. 
 ###Overall mission: Create a picture
 ###Objects: Crayon Box, Color board
 ###Functions: Color
 ###Pseudocode
 Create an object coloring board 
 	Create a hash with grid values for the key and the string 'blank' for the value.
  Alternatively, create an array with with the grid values only. 
  The grid values should be a letter between A-M and a number 1-13.
 Create an object crayon box
	Define an array of 12 colors
 	Define a function color to update the coloring board hash to include values to include a randomly selected color from the crayon box array.
```javascript

var crayonBox = ['Yellow Green','Fluorescent Orange','Asparagus', 'Green','Fluorescent Pink', 'Wisteria', 'Sky Blue', 'Fluorescent Yellow','Gray','Blue','Golden Yellow','Carnation Pink'];
var letters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n']
var numbers = []
for (var i = 1; i <= 14; i++) {
   numbers.push(i);
};

var grid = [];
letters.forEach(function(a1){
  numbers.forEach(function(a2){
    grid.push(a1 + a2);
  });
});

function color(){
	var colorGrid = {};
	for(var i = 0; i < grid.length;i++){
		colorGrid[grid[i]] = crayonBox[Math.floor(Math.random() * crayonBox.length)];
	};
	console.log(colorGrid)
};

color();
```


