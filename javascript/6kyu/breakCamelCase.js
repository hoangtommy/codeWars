//Reflection: Regex keeps getting cooler. When using replace, () allows you to capture an expression. $1 allows you to reference that expression


//Problem:
// Complete the solution so that the function will break up camel casing, using a space between words.

// Example
// solution('camelCasing') // => should return 'camel Casing'


//Intial correct solution:
function solution(string) {
  let words = [];
  let lastIndex = 0;
  string.split('').forEach(function(char, idx) {
    if (/[A-Z]/.test(char)) {
      words.push(string.slice(lastIndex, idx));
      lastIndex = idx;
    }
  })
  words.push(string.slice(lastIndex));
  return words.join(' ');
}

//Interesting solutions
function solution(string) {
	return string.replace(/([a-z])([A-Z])/g, '$1 $2');
}