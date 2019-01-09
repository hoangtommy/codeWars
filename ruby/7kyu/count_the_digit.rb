#Reflection: You can iterate over a range, don't have to convert to array first.

# Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer. Square all numbers k (0 <= k <= n) between 0 and n. 
# Count the numbers of digits d used in the writing of all the k**2. Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.

# Examples:

# n = 10, d = 1, the k*k are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
# We are using the digit 1 in 1, 16, 81, 100. The total count is then 4.

# nb_dig(25, 1):
# the numbers of interest are
# 1, 4, 9, 10, 11, 12, 13, 14, 19, 21 which squared are 1, 16, 81, 100, 121, 144, 169, 196, 361, 441
# so there are 11 digits `1` for the squares of numbers between 0 and 25.

require 'pry'

#almost all tests passed on codewars...
def nb_dig(n, d)
    #create an array of sqaures from d up to and including n
    numbers = (d..n).to_a
    #issue was here: should've made the range 0..n instead of d..n
    squares = numbers.map do |num|
        num * num
    end
    #for each square...
    count = 0
    binding.pry
    squares.each do |square|
        #count and add to a tally if d is present
        count += square.to_s.count(d.to_s)
    end
        #turn it into a string
    #return the tally
    count
end

#creative solutions
def nb_dig2(n, d)
    (0..n).map { |num| num ** 2 }.join.count(d.to_s)
end

def nb_dig3(n, d)
    (0..n).inject(0) { |sum, num| sum + num**2.to_s.count(d.to_s) }
end

#test function
def assertEqual(actual, expected, testName)
    if actual == expected
        p "#{testName}: passed"
    else
        p "#{testName}: failed"
    end
end

# #tests
# assertEqual(nb_dig(10, 1), 4, 'Four 1s in range 1 to 10')
# assertEqual(nb_dig(3, 2), 0, 'Zero 2s in range 2 to 4')
# assertEqual(nb_dig(25, 1), 11, 'Eleven 1s in range 1 to 25')