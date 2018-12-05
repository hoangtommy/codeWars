// Reflection: Keep practicing with high order functions. This time it is filter


// Instructions

// Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

// It should remove all values from list a, which are present in list b.

// array_diff([1,2],[1]) == [2]
// If a value is present in b, all of its occurrences must be removed from the other:

// array_diff([1,2,2,2,3],[2]) == [1,3]

//Initial correct solution
function array_diff(a, b) {
  let diff = [];
  a.forEach(function(element) {
    if (b.indexOf(element) === -1) {
      diff.push(element);
    }
  })
  return diff;
}

//Interesting alternative solutions
function array_diff(a, b) {
  return a.filter(function(item) {
  	return b.indexOf(item) === -1;
  })
}