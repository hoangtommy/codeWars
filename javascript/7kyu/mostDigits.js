//REFLECTION
// We can use string interpolation to convert an integer to a string
	//eg. 2 => `${2}` is the same as String(2) is the same as 2.toString()


// Problem: Find the number with the most digits. 
// If two numbers in the argument array have the same number of digits, 
// return the first one in the array.

// My Solution
function findLongest(array){
  return array.reduce(function(longest, number) {
    if (longest.toString().length >= number.toString().length) {
      return longest;
    } else {
      return number;
    }
  });
}