//Reflection: I learned that we can create a new Reg Expression using `new RegExp()`. I reviewed that `string.match(regex)`

//incorrect solutions
// function nbDig(n, d) {
//     //create a range between 0 and n
//     let squares = [];
//     for (let i = 1; i <= n; i++) {
//         squares.push(i**2);
//     }
//     //square all numbers within that range
//     let tally = squares.reduce(function(total, square) {
//         total + ((square.toString()).match(new RegExp(d.toString(), 'g')) || []).length;
//     }, 0);
//     //for each square..
//         //turn it into a string and count how many times d is present
//         //keep track of the counter
//     return tally;
// }

//creative solution
function nbDig(n, d) {
    let allNums = '';
    let regex = new RegExp(d, 'g');
    for (let i = 0; i <= n; i++) {
        allNums += i**2;
    }
    return allNums.match(regex).length;
}

//test function
function assertEquals(actual, expected, testName) {
    if (actual === expected) {
        console.log(`${testName}: passed`);
    } else {
        console.log(`${testName}: failed. Expected: ${expected} but got ${actual}`);
    }
}

//tests
assertEquals(nbDig(10, 1), 4, 'returns 4 when digit is 1');
assertEquals(nbDig(5, 0), 1, 'returns zero if not present');