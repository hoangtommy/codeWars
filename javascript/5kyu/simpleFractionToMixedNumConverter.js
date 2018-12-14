//Reflection: The other solutions were more or less the same. Sometimes, things really do require a long and ugly solution haha

// Instructions
// Task
// Given a string representing a simple fraction x/y, your function must return a string representing the corresponding mixed fraction in the following format:

// [sign]a b/c

// where a is integer part and b/c is irreducible proper fraction. There must be exactly one space between a and b/c. Provide [sign] only if negative (and non zero) and only at the beginning of the number (both integer part and fractional part must be provided absolute).

// If the x/y equals the integer part, return integer part only. If integer part is zero, return the irreducible proper fraction only. In both of these cases, the resulting string must not contain any spaces.

// Division by zero should raise an error (preferably, the standard zero division error of your language).

// Value ranges
// -10 000 000 < x < 10 000 000
// -10 000 000 < y < 10 000 000
// Examples
// Input: 42/9, expected result: 4 2/3.
// Input: 6/3, expedted result: 2.
// Input: 4/6, expected result: 2/3.
// Input: 0/18891, expected result: 0.
// Input: -10/7, expected result: -1 3/7.
// Inputs 0/0 or 3/0 must raise a zero division error.
// Note
// Make sure not to modify the input of your function in-place, it is a bad practice.


//Partially correct solution
 function findGCD(num1, num2) {
   let fraction = '';
   let gcd = 1;
   for (let i = 1; i < num2; i++) {
     if ((num1 % i === 0) && (num2 % i === 0)) {
       gcd = i;
     }
   }
   return fraction = `${Math.abs(num1 / gcd)}/${Math.abs(num2 / gcd)}`;
 }
 
 function mixedFraction(s){
  let mixed = '';
  let nums = s.split('/').map(function(element) {
    return Number(element);
  });
  if (nums[1] === 0) throw ZeroDivisionError;
  let result = nums[0] / nums[1];
  if (result % 1 === 0) {
    return mixed = result.toString();
  } else {
    result = result.toString().split('.')
    if (result[0] !== '0') {
      mixed = `${result[0]} `;
    }
    let answer = nums[0] % nums[1];
    let fraction = findGCD(answer, nums[1]);
    return mixed += `${fraction}`;
  }
}