//REFLECTION: Chunk the problems into parts, then DRY em out! Good job on this

// Description:
// Each exclamation mark weight is 2; Each question mark weight is 3. Put two string left and right to the balance, Are they balanced?

// If the left side is more heavy, return "Left"; If the right side is more heavy, return "Right"; If they are balanced, return "Balance".

// Examples
// balance("!!","??") === "Right"
// balance("!??","?!!") === "Left"
// balance("!?!!","?!?") === "Left"
// balance("!!???!????","??!!?!!!!!!!") === "Balance"


// My Initial correct solution
//input: 2 strings
//output: string (left, right, balance)
//count !, ? in each string. add up their total and compare to each other
function balance(left,right){
  let leftEMarks = 0;
  let leftQMarks = 0;
  for (let i = 0; i < left.length; i++) {
    if (left[i] === '!') {
      leftEMarks += 2;
    } else if (left[i] === '?') {
      leftQMarks += 3;
    }
  }
  let leftTotal = leftEMarks + leftQMarks;
  //count total eMarks in left, count total qMarks in left
    // sum thte total
  let rightEMarks = 0;
  let rightQMarks = 0;
  for (let i = 0; i < right.length; i++) {
    if (right[i] === '!') {
      rightEMarks += 2;
    } else if (right[i] === '?') {
      rightQMarks += 3;
    }
  }
  let rightTotal = rightEMarks + rightQMarks;
  //do the same for the right
    //sum the total
  //if left side total has a higher value than right side total, return 'left'
  return leftTotal === rightTotal ? 'Balance' : leftTotal > rightTotal ? 'Left' : 'Right';
  //vice verse: return 'right'
  //if they're equal, return 'balance'
}

//My refactored DRY solution
function balance(left,right){
  function getTotal(str) {
    return str.split('').reduce(function(total, char) {
      if (char === '!') {
        return total + 2;
      } else if (char === '?') {
        return total + 3;
      }
    }, 0); 
  }
  
  let leftTotal = getTotal(left);
  let rightTotal = getTotal(right);
  return leftTotal === rightTotal ? 'Balance' : leftTotal > rightTotal ? 'Left' : 'Right';
}

//Other creative solution using 2 high order functions
function balance(left,right){
  function weight(side) {
    return [...side]
      .map(function(char) {
        return char === '!' ? 2 : 3;
      })
      .reduce(function(total, num) {
        return total + num;
      })
  }
  let diff = weight(left) - weight(right);
  return diff === 0 ? 'Balance' : diff > 0 ? 'Left' : 'Right';
}