//Reflection: sometime you gotta type a longass regex to answer the unique problem?

// Implement String#ipv4_address?, which should return true if given object is an IPv4 address - four numbers (0-255) separated by dots.

// It should only accept addresses in canonical representation, so no leading 0s, spaces etc.

//Partially correct Initial solution
String.prototype.ipv4Address=function(){
  return /^(\d+)\.(\d+)\.(\d+)\.(\d+)$/.test(this);
}

//One correct solution
String.prototype.ipv4Address = function() {
  return /^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]?|[1-9]?[0-9])(\.(?!$)|$)){4}$/.test(this);
}
