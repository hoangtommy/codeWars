// Reflection: use ternary operators to simplify ifs

// Challenge
// Have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it.
// For example: if num = 4, then your program should return (4 * 3 * 2 * 1) = 24.
// For the test cases, the range will be between 1 and 18 and the input will always be an integer.

function firstFactorial(num) {
  return (num === 1) ? 1 : num * firstFactorial(num - 1);
}


//Tests
function assertEqual(actual, expected, testName) {
  if (actual === expected) {
    return `${testName}: passed`;
  } else {
    return `${testName}: failed. Expected ${expected} but got ${actual}`;
  }
}

console.log(assertEqual(firstFactorial(3), 6, 'simple test'));
console.log(assertEqual(firstFactorial(1), 1, '1 returns 1'));
console.log(assertEqual(firstFactorial(4), 24, '4! is 6'));
