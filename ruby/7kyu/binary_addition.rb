# Reflection: to_s(2) can convert integers to binary

# Implement a function that adds two numbers together and returns their sum in binary. 
# The conversion can be done before, or after the addition.

# The binary number returned should be a string.

def binary_addition(int1, int2)
  # add the two integers together
  # turn it onto binary
  "%b" % (int1 + int2)
end

# other creative solutions
# use to_s(2) to convert to binary

# Tests
class Test
  def self.assert_equals(actual, expected, test)
  	actual == expected ? "#{test}: pass" : "#{test}: fail. Expected: #{expected}, but got #{actual}"
  end
end

# Test Cases
p Test.assert_equals(binary_addition(2, 2), '100', 'Tests single digit')
p Test.assert_equals(binary_addition(51, 12), '111111', 'Tests double digits')
p Test.assert_equals(binary_addition(0, 1), '1', 'Tests with zeros')