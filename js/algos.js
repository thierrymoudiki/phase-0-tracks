// Release 0

// input: array of phrases
// create an index for storing the array's index for the phrase with    maximum length
// For each element in the array of phrases, calculate its length
// If the length of the element is < the length of the next element
// then index is equal to index of next element
// output: print in the console the longest phrase in the array

// Finds the longest phrase in a array and returns it
function longest_phrase(array_of_phrases) {
  // length of the array
  var n = array_of_phrases.length;
  // index for the element with maximum length
  var index_max = 0;

  for (var i = 0; i < n - 1; i++) {
    if (array_of_phrases[i].length < array_of_phrases[i + 1].length) {
      index_max = i + 1;
    }
  }

  console.log(array_of_phrases[index_max]);
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

// Driver code

// Release 0

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

// Release 1

console.log(keyval_match({name: "Steven", age: 54}, {name: "Tamir", age: 54})); //  true
console.log(keyval_match({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3})); //  true
console.log(keyval_match({name: "Steven", age: 54}, {animal: "Dog", legs: 3})); //  false 
console.log(keyval_match({name: "Steven", age: 54}, {name: "Tamir", age: 53})); //  false 
