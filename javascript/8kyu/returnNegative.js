//Reflection: keep practicing the simple functions like Math.abs();

// In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?

// Example:

// makeNegative(1); // return -1
// makeNegative(-5); // return -5
// makeNegative(0); // return 0
// makeNegative(0.12); // return -0.12

//initial correct solution
function makeNegative(num) {
	return Math.abs(num) * -1;
}

//other creative solutions
function makeNegative2(num) {
	return num < 0 ? num : -num;
}

//test function
function assertEquals(actual, expected, testName) {
	if (actual === expected) {
		return `${testName}: passed`;
	} else {
		return `${testName}: failed`;
	}
}

//tests
console.log(assertEquals(makeNegative(1), -1, 'works with positive int'));
console.log(assertEquals(makeNegative(-1), -1, 'works with negative int'));
console.log(assertEquals(makeNegative(0), 0, 'does not change 0'));
console.log(assertEquals(makeNegative(1.2), -1.2, 'works with floats'));