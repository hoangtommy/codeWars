# Reflection: 
  #minmax returns an array pair of lowest and highest
  #product returns all combinations of elements from two different arrays
  #var1, var2 = [1, 2] => var1 is 1, var2 is 2
  	#double assignment to the element in an array

# You are given two arrays a1 and a2 of strings. Each string is composed with letters from a to z. 
# Let x be any string in the first array and y be any string in the second array.
# Find max(abs(length(x) − length(y)))

# If a1 and/or a2 are empty return -1 in each language except in Haskell (F#) where you will return Nothing (None).

# #Example:

# a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
# a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
# mxdiflg(a1, a2) --> 13

#initial incorrect solution
def max_diff(a1, a2)
  a1longest = a1.sort.first.length
  a1shortest = a1.sort.last.length
  a2longest = a2.sort.first.length
  a2shortest = a2.sort.last.length
  (a1longest - a2shortest).abs > (a1shortest - a2longest).abs ? a1longest - a2shortest : a2longest - a1shortest
end

#correct solution
def max_diff(a1, a2)
  return -1 if a1.empty? || a2.empty?
  a1.product(a2)
    .map { |x, y| (x.length - y.length).abs }
    .max
end