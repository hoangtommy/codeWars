Reflection: Keep it simple. Plan using pseudocode

//Problem
// We want to know the index of the vowels in a given word, for example, there are two vowels in the word super (the second and fourth letters).

// So given a string "super", we should return a list of [2, 4].

// Some examples:
// Mmmm  => []
// Super => [2,4]
// Apple => [1,5]
// YoMama -> [1,2,4,6]


//First attempt and solution
function vowelIndices(word){
  let vowelIndices = [];
  word.split('').forEach(function(letter, idx) {
    if (/[aeiouy]/i.test(letter)) {
      vowelIndices.push(idx + 1);
    }
  }) 
  return vowelIndices;
}