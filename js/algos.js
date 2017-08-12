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

// Driver code

// returns 'longest phrase'
console.log(
  longest_phrase([
    'long phrase',
    'longest phrase',
    'longer phrase'
  ])
);

// returns 'looongest phrase ever'
console.log(
  longest_phrase([
    'long phrase',
    'longest phrase',
    'looongest phrase',
    'looongest phrase ever',
    'longer phrase'
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
