// Release 0

// input: array of phrases
// create an index for storing the array's index for the phrase with    maximum length
// create a variable saying what is the current highest length observed 
// For each element in the array of phrases, calculate its length
//  If the length of current element is > the current highest length observed 
//  then index <- to index of the current element
//       and current highest length observed <- length of current elt 
// output: the longest phrase in the array corresponds to array_of_phrases[index]

// Finds the longest phrase in a array and returns it
function longest_phrase(array_of_phrases) {
  // length of the array
  var n = array_of_phrases.length;
  // index for the element with maximum length
  var index_max = 0;
  var current_max_length = 0;
  var current_elt = 0; 

  for (var i = 0; i < n; i++) {
     current_elt = array_of_phrases[i];
    if (current_elt.length > current_max_length) {
      current_max_length = current_elt.length;
      index_max = i;
    }
  }

  return array_of_phrases[index_max];
}


// Release 1

// input: 2 key/value objects 
// create a boolean variable which will be true if any key/value match 
// For each element in the object 1 and object 2, verify if key/value match 
// If any key/value do match, then set the boolean variable to true 
// output: the boolean variable which is true if any key/value match and false otherwise
function keyval_match(keyval_object1, keyval_object2) {
  // Will be equal to true if key/value pairs are equal 
  var boolean_test = false;
  
  for (var key1 in keyval_object1) {
    for (var key2 in keyval_object2) {
        if ((key1 == key2) && (keyval_object1[key1] == keyval_object2[key2])) {
          boolean_test = true;
        }
    }
  }
  
  return boolean_test;
}


// Release 2

// input: an integer for number of letters: 'nb_letters'
// create an array for storing the 26 letters of the alphabet 
// create a result array with 'nb_letters' letters 
// for each elt in 1..nb_letters
//    select a random letter in the alphabet
//    assign the random letter to the result array 
// output: a random word with 'nb_letters' letters 

// generate a random word with 'nb_letters' letters 
function generate_word(nb_letters)
{
  var alphabet_array = "abcdefghijklmnopqrstuvwxyz".split('');
  var res_array = new Array(nb_letters)
  
    for (var i = 0; i < nb_letters; i++){
      res_array[i] = alphabet_array[Math.floor(Math.random() * 25)];
    }
    
  return res_array.join('');
}

// input: an integer for length: 'nb_elts'
// for each elt in 1..nb_elts
//    define the length of the word 
//    create a random word with that length 
//    assign the random word to an output array 
// output: array of strings with 'nb_elts' random words 
function get_strings_array(nb_elts){
  var res_array = new Array(nb_elts); 
  
    for (var i = 0; i < nb_elts; i++){
      res_array[i] = generate_word(Math.floor(Math.random() * 10) + 1); 
    }
  
  return res_array;
}

// ---------- Driver's Code 

// Release 0

console.log("----- Release 0 \n")

// returns 'longest phrase'
console.log(longest_phrase(['long phrase', 'longest phrase', 'longer phrase']));

// returns 'looongest phrase ever'
console.log(
  longest_phrase([
    'long phrase',
    'longest phrase',
    'looongest phrase',
    'looongest phrase ever',
    'longer phrase',
  ])
);

// returns 'looongest phrase ever'
console.log(
  longest_phrase([
    'long phrase',
    'longest phrase',
    'looongest phrase',
    'looongest phrase ever',
  ])
);
console.log("\n")

// Release 1

console.log("----- Release 1 \n")

console.log(keyval_match({name: "Steven", age: 54}, {name: "Tamir", age: 54})); //  true
console.log(keyval_match({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3})); //  true
console.log(keyval_match({name: "Steven", age: 54}, {animal: "Dog", legs: 3})); //  false 
console.log(keyval_match({name: "Steven", age: 54}, {name: "Tamir", age: 53})); //  false 
console.log("\n")

// Release 2

console.log("----- Release 2 \n")

// Part 1 
console.log("- array with 3 elements: \n")
console.log(get_strings_array(3));
console.log("\n")

console.log("- array with 4 elements: \n")
console.log(get_strings_array(4));
console.log("\n")

console.log("- array with 5 elements: \n")
console.log(get_strings_array(5));
console.log("\n")

// Part 2 
console.log("- Random arrays + longest phrase: \n")
var current_array;
var long_phrase;
for (var i = 0; i < 10; i++){
  current_array = get_strings_array(i+1); 
  console.log("array #" + (i + 1) + ": ");
  console.log(current_array);
  long_phrase = longest_phrase(current_array); 
  console.log("longest phrase in array #" + i + ": ");
  console.log(long_phrase);
  console.log("\n")
}
