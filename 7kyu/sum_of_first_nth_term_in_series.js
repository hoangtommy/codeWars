// Sum of the first nth term of Series
// https://www.codewars.com/kata/555eded1ad94b00403000071/solutions/javascript
// Description:
// Task:
// Your task is to write a function which returns the sum of following series upto nth term(parameter).

// Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...
// Rules:
// You need to round the answer to 2 decimal places and return it as String.

// If the given value is 0 then it should return 0.00

// You will only be given Natural Numbers as arguments.

// Examples:
// SeriesSum(1) => 1 = "1.00"
// SeriesSum(2) => 1 + 1/4 = "1.25"
// SeriesSum(5) => 1 + 1/4 + 1/7 + 1/10 + 1/13 = "1.57"

// My solution
//input: integer
//output: float with rounded to 100th
function SeriesSum(n) {
  // create an array with n number of elements
  var series = [];
  for (var i = 1, j = 1.00; i <= n; i++, j += 3.00) {
    series.push(1 / j);
  }
  var sum = series.reduce(function(total, num) {
    return total + Number(num);
  }, 0);
  return sum.toFixed(2).toString();
  // sum the array of floats, convert to a string, and trim to 2 decimal points
}

//REFLECTION: remember the basics. #toFixed(i) turns a number 
// into a string
// next time, use the second variable in the for loop to sum things

function seriesSum(number) {
  var sum = 0;
  for (var i = 0; i < number; i++) {
  	sum += 1 / (1 + 3 * i);
  }
  return sum.toFixed(2);
}
