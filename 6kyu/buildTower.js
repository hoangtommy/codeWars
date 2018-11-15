//REFLECTION: Use #repeat method!


// Build Tower by the following given argument:
// number of floors (integer and always greater than 0).

// Tower block is represented as *

// JavaScript: returns an Array;

// for example, a tower of 3 floors looks like below

// [
//   '  *  ', 
//   ' *** ', 
//   '*****'
// ]


//revised SOLUTION:

function towerBuilder(nFloors) {
  let tower = [];
  //for each floor
  for (let floor = 1; floor <= nFloors; floor++) {
  	// create blocks for floor: '*'.repeat(floor * )
  	let padding = ' '.repeat(nFloors - floor);
  	let block = '*'.repeat(floor * 2 - 1);
  	// pad each side of the block
  	//push into the tower
  	tower.push(padding + block + padding);
  }
  return tower;
}


// advanced solution using map
function towerBuilder(nFloors) {
  return [...Array(nFloors)].map(function(_, floor) {
    let padding = ' '.repeat(nFloors - floor - 1);
    return padding + '*'.repeat(floor * 2 + 1) + padding;
  });
}