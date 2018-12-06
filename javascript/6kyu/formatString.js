//Reflection: Consider using reduce and include its index and array parameters
//Regex so powerful. Check this out: .replace(/(.*),(.*)$/, '$1 &$2');
	//the $1 captures the first (.*) match aka second to last
	//the $2 captures the second aka last
	//together, we capture the second to last substring, add &, and capture the last substring


// Given: an array containing hashes of names

// Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

// Example:

// list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
// // returns 'Bart, Lisa & Maggie'

// list([ {name: 'Bart'}, {name: 'Lisa'} ])
// // returns 'Bart & Lisa'

// list([ {name: 'Bart'} ])
// // returns 'Bart'

// list([])
// // returns ''
// Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.

//Initial correct but ugly solution
function list(names) {
  // grab each name and place it into an array
  // create an empty string that we'll fill and return
  // join the entire array with , separating each item
  // search for the last ',' and replace with an ^&
  if (names.length < 1) return '';
  if (names.length < 2) return names[0][name];
  
  let arr = [];
  names.forEach(function(item) {
  	for (name in item) {
  	  arr.push(item[name]);
  	}
  })
  let string = arr.join(', ');
  let lastComma = string.lastIndexOf(',');
  return string.split('').slice(0, lastComma).join('') + ' &' + string.split('').slice(lastComma + 1).join('');
}

//Tests
function assertEquals(expected, actual, test) {
  expected === actual ? `${test} passed.` : `${test} fail. expected ${expected} but got ${actual}`;
}
assertEquals('Bart, Lisa & Maggie', list([{name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}]), 'works for multiple names');
assertEquals('Bart', list([{name: 'Bart'}]), 'works for 1 name');
assertEquals('Bart', list([{name: 'Bart'}, {name: 'Lisa'}]), 'works for two names');

//Interesting alternative solution
function list(names){
  return names.reduce(function(previous, current, index, array) {
    if (index === 0) {
      return current.name;
    } else if (index === array.length - 1) {
      return previous + ` & ${current.name}`;
    } else {
      return previous + `, ${current.name}`;
    }
  }, '');
}
