// U3.W9:JQuery


// I worked on this challenge with William G..
// This challenge took me 1.5 hours.

$(document).ready(function(){

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

Reflection
What is jQuery?
	JQuery is a JS library meant to assist developers in web display. It allows for advanced
	display and manipulation of features in html. 
What does jQuery do for you?
	JQuery allows developers to interact with html elements in a more roboust way, with 
	powerful means to handle unique user events, domain manipulation, and server connections.
What did you learn about the DOM while working on this challenge?
	I feel as though I did not learn very much specifically about the DOM during this challenge.
	Each release was more geared toward the specific JQuery code we were writting. The main 
	DOM take away from this challenge is that JQuery is a useful way to interact and manipulate the DOM. 




})  // end of the document.ready function: do not remove or write DOM manipulation below this.