//Reflection: {6,} stands for 6 for more of the preceeding. (?=.*pattern) is used as a look ahead 
//check and see if the pattern exists within the string. It basically says is there anything(.*) AND
//the pattern in this string?

// You need to write regex that will validate a password to make sure it meets the following criteria:

// At least six characters long
// contains a lowercase letter
// contains an uppercase letter
// contains a number
// Valid passwords will only be alphanumeric characters.

//Intial partially correct solution:
function validate(password) {
  return /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/.test(password);
}

//Corrective Solutions
function validate(password) {
	return password.length >= 6 &&
	  /[a-z]/.test(password) &&
	  /[A-Z]/.test(password) &&
	  /\d/.test(password);
}

function validate(password) {
	return /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[\dA-Za-z]{6,}$/.test(password);
}