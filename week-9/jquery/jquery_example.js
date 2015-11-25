// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

//RELEASE 3:
  //Add code here to select elements of the DOM
bodyElement = $('body').css({'background-color': 'pink'})

//RELEASE 4:
  // Add code here to modify the css and html of DOM elements
helloElement =$('.hello').css({'color':'blue', 'border': '10px solid black', 'visibility':'visible'})

//RELEASE 5: Event Listener
  // Add the code for the event listener here
	$('img').on('mouseover', function(){
    $(this).attr('src', 'fox.png');
	})
    $('img').on('mouseleave', function(){
    $(this).attr('src', 'dbc_logo.png');	
     })

//RELEASE 6: Experiment on your own
	$('img').click(function(){
	$(this).css({borderColor:'#f44d5e', borderStyle: 'solid'}).animate({
		borderWidth: 10,
		width: '30em'
		
	}) 	
	})






})  // end of the document.ready function: do not remove or write DOM manipulation below this.