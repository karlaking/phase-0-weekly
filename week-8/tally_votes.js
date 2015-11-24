// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Kevin C.
// This challenge took me 3 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Tallying votes for President 
// Loop through each voter
// Access the properties of each voter 
// Label the officers 
// If person doesn't have a vote, then create a new object with the key of the person's name with a value of one. If the person does exist in voteCount, then add one to the value. 
// 
//


// __________________________________________
// Initial Solution

for (var voter in votes){// going through each voter
    var obj = votes[voter];// accessing inner object of votes
    for (var office in obj){//looping through inner object of votes -- office is president, vp, etc.
      for (var name in voteCount){//looping through voteCount -- name is president, vp, etc.
        var i = voteCount[name]; // accessing inner object of voteCount
        if (office === name){ //checking to see if the offices match up.. ie pres to pres. Getting us into the right place within voteCount
          if (i.hasOwnProperty(obj[office])){//checking to see if the nominee has already been created within the voteCount inner object.
          i[obj[office]] += 1;
          } else{
            i[obj[office]] = 1                      
          }        
        }      
      }
    }
}


for (var position in voteCount){//looping through the four positions in voteCount
  var nameArray = [];
  var tallyArray = [];
  var gotVote = voteCount[position]//accessing EACH of our inner object within voteCount
  for (var candidate in gotVote){//looping through EACH inner object within voteCout
     nameArray.push(candidate);
     tallyArray.push(gotVote[candidate]);
  }
  var index = tallyArray.indexOf(Math.max.apply(null,tallyArray));
  console.log(index);
  for (var popularKids in officers){
    if (popularKids === position)
      officers[position] = nameArray[index];
  }
  console.log(officers);
  
};
// __________________________________________
// Refactored Solution
for (var voter in votes){// going through each voter
    var obj = votes[voter];// accessing inner object of votes
    for (var office in obj){//looping through inner object of votes -- office is president, vp, etc.
      for (var name in voteCount){//looping through voteCount -- name is president, vp, etc.
        var i = voteCount[name]; // accessing inner object of voteCount
        if (office === name){ //checking to see if the offices match up.. ie pres to pres. Getting us into the right place within voteCount
          if (i.hasOwnProperty(obj[office])){//checking to see if the nominee has already been created within the voteCount inner object.
          i[obj[office]] += 1;
          } else{
            i[obj[office]] = 1                      
          }        
        }      
      }
    }
}


for (var position in voteCount){//looping through the four positions in voteCount
  var nameArray = [];
  var tallyArray = [];
  var gotVote = voteCount[position]//accessing EACH of our inner object within voteCount
  for (var candidate in gotVote){//looping through EACH inner object within voteCout
     nameArray.push(candidate);
     tallyArray.push(gotVote[candidate]);
  }
  var index = tallyArray.indexOf(Math.max.apply(null,tallyArray));
  console.log(index);
  for (var winners in officers){
    if (winners === position)
      officers[position] = nameArray[index];
  }
  console.log(officers);
  
};


// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?
// That it is easy to get caught up in the details! The for loops were exhausting at 
// first. It was hard to figure out how to use brakcet notation to get the value needed,
//  but got much more proficient by the end of the challenge. 
// 
// Were you able to find useful methods to help you with this?
// Using for element in object was a popular and human readable code that was used a lot.

// What concepts were solidified in the process of working through this challenge?
// How to guess and check when trying to access values and keys in nested objects.
// A lot of console.log() was used to make sure we were getting at what we wanted.





// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)