//REFLECTION: Modulo does so much! By % 60, we can effectively extract the hours and minutes

//My SOLUTION

function race(v1, v2, g) {
  if (v2 < v1) return null;
  let time = g / (v2 - v1);
  let hour = Math.floor(time % 60);
  let min = Math.floor((time * 60) % 60);
  let sec = Math.floor((time * 3600) % 60);
  return [hour, min, sec];
}