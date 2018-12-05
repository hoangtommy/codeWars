// Reflection: array.sort(function(a, b) {b.length - a.length})
// Note that < 0 will sort b as a lower index
// > 0 will sort a as a lower index
// === 0 will keep order the same

// Description:
// When given a string of space separated words, return the word with the longest length. If there are multiple words with the longest length, return the last instance of the word with the longest length.

// Example:

// 'red white blue' //returns string value of white

// 'red blue gold' //returns gold

function longestWord(stringOfWords){     
  return stringOfWords.split(' ').reduce(function(longest, current) {
    if (current.length >= longest.length) {
      return current;
    } else {
      return longest;
    }
  });
}