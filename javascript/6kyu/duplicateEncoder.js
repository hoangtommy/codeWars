//Reflection: use #indexOf and #lastIndexOf to check uniqueness of a character

//The goal of this exercise is to convert a string to a new string where each
// character in the new string is "(" if that character appears only once in the original string, or ")"
// if that character appears more than once in the original string.
// Ignore capitalization when determining if a character is a duplicate.

//initial incorrect solution
// function duplicateEncode(word) {
//   let encoded = '';
//   word.split('').forEach(function(letter) {
//     encoded += word.includes(letter) ? ')':'(';
//   });
//   return encoded;
// }

//correct solution
function duplicateEncode(word) {
  //lowercase entire word
  //split word into characters
  //for each character...
    //check that the index of the char is not the same as the last index of that character
  return word
    .toLowerCase()
    .split('')
    .map(function(char) {
      return word.indexOf(char) === word.lastIndexOf(char) ? '(':')';
    })
    .join('')
}

//tests
function assertEquals(actual, expected, testName) {
  if (actual === expected) {
    console.log(`${testName}: passed`);
  } else {
    console.log(`${testName}: failed. Expected ${expected} but got ${actual}`);
  }
}

assertEquals(duplicateEncode('din'), '(((', 'all unique letters');
assertEquals(duplicateEncode('hello'), '(())(', 'one repeating letter');
assertEquals(duplicateEncode('Success'), ')())())', 'ignores capital letters');
