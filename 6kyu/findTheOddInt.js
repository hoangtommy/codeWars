// Given an array, find the int that appears an odd number of times.
//There will always be only one integer that appears an odd number of times.

//I wasn't able to answer this question in 30 minutes
function findOdd(A) {
  //turn the Array into a string
  //search the string and create subarrays using match
    //starting with the first element and moving forward
  var string = A.slice().join('');
  for (var current = 0; current < A.length; current++) {
    var currentString = A[current].toString();
    var oddOne = string.match(/currentString/g).length;
    if (oddOne % 2 === 1) return oddOne;
  }
  return oddOne;
}

//Solution:

function findOd(array) {
  //for each number..
  	// create a subarray with all elements that === number
  	// if the subarray size is odd, return it
  for (var idx = 0; idx < array.length; idx++) {
  	var subArray = array.filter(function(num) {
  	  return array[idx] === num;
  	});
  	if (subArray.length % 2 === 1) return array[idx];
  }
}
