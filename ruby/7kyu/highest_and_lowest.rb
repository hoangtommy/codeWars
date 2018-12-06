#reflection: & operator converts a method to a proc to pass through

# In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

# Example:

# high_and_low("1 2 3 4 5")  # return "5 1"
# high_and_low("1 2 -3 4 5") # return "5 -3"
# high_and_low("1 9 3 4 -5") # return "9 -5"
# Notes:

# All numbers are valid Int32, no need to validate them.
# There will always be at least one number in the input string.
# Output string must be two numbers separated by a single space, and highest number is first.

def high_and_low(numbers)
  return 'nil' if numbers.size < 2
  sorted = numbers.split(' ').sort { |a, b| a.to_i - b.to_i }
  "#{sorted[sorted.length - 1]} #{sorted[0]}"
end

#quick tests
# puts high_and_low('1') #=> nil
# puts high_and_low('100 10') #=> '100 10'
# puts high_and_low('1 2 3') #=> '3 1'
puts high_and_low('10 -15 100 22 -1') #=> '100 -15'

#Alternative solution
def high_and_low(numbers)
  numbers = numbers.split.map(&:to_i)
  "#{numbers.max} #{numbers.min}"
end