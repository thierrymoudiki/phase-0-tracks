// 0 - Function for reversing string 

// input: a string 
// create an output array which will contain the letters in reverse order
// Loop in the input string, from the end to the beginning
// For each letter in input string, starting from the end 
// set current output array's elt to that letter  
// output: reversed string <- output array converted to string

function reverse_string(input_string)
{
  var nb_letters = input_string.length;
  output_array = new Array(nb_letters)
  
  var j = 0;
  for (var i = (nb_letters-1); i>=0; i--)
  {
    output_array[j] = input_string[i];
    j++;
  }
  
  return output_array.join('');
}


// 1 - Driver's code 

console.log("----- Driver's code")

var first_word = reverse_string("hello");
var second_word = reverse_string("hello world");
var third_word = reverse_string("hello javascript world");

if (1 == 1)
{
  console.log(first_word);
}
console.log(second_word);
console.log(third_word);