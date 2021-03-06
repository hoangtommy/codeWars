//REFLECTION: Use more than one high level functions

//My sloppy but correct solution:
function findUniq(arr) {
  let unique = arr[0];
  let subarr = arr.filter(function(number) {
    return number === unique;
  });
  
  if (subarr.length === 1) {
    return subarr[0];
  } else {
    return arr.filter(function(number) {
      return subarr[0] !== number;
    }).pop();
  }
}

//better solutions:
function findUniq(arr) {
  let arr2 = arr.slice().sort(function(a, b) {
  	return a - b;
  });
  return arr2[0] === arr2[1] ? arr2[-1] : arr2[0];
}