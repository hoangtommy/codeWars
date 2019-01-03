//Reflection: && evaluates the second expression!?!!

//string.match(/regex/gi).length; returns an array object's length
// careful, as a no match will throw an error because we can .length a null
// in this case, we can see if a char exists like so...
	function XO() {
		let x = string.match(/x/gi);
		let o = string.match(/o/gi);
		return (x && x.length) === (o && o.length)
		//here we check if x array is null AND if it isn't evaluate its length
	}

// Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

// Examples input/output:

// XO("ooxx") => true
// XO("xooxx") => false
// XO("ooxXm") => true
// XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
// XO("zzoo") => false

//Initial solution
//input: string
//output: boolean
//process: isolate string to just have x and o. total each and compare
function XO(string) {
  // filter for x
  let exes = string.toLowerCase().split('').filter(function(x) {
  	return x === 'x';
  });
  let ohs = string.toLowerCase().split('').filter(function(o) {
  	return o === 'o';
  })
  // filter for o
  return exes.length === ohs.length
  //compare size of each array
}

//tests
function test(actual, expected, testName) {
	if (actual === expected) {
		console.log(`${testName} passed`);
	} else {
		console.log(`${testName} failed: expected ${expected} but got ${actual}`);
	}
}
//works for 
test(XO('xXxoOO'), true, 'different cases');
test(XO('xyzobc'), true, 'includes other letters');


//Refactoring
function XO(string) {
	return string.match(/x/gi).length === string.match(/o/gi).length;
}
//issue here is that if the match results in a null, we can't use .length
