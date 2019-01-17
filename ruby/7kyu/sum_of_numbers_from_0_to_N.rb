#reflection: Gotta continue learning passing symbols to high order functions


def show_sequence(n)
	numbers = (1..n).to_a.join('+')
	sum = numbers.reduce(:+)
	"#{numbers} = #{sum}"
end

#Test cases

def assert_equals(actual, expected, testName)
	if actual == expected
		return "#{testName}: passed"
	else
		return "#{testName}: failed. Expected #{expected} but got #{actual}"
	end
end

# describe "Test Cases" do
# 	it "should work for regular integers" do
# 		assert_equals(show_sequence(6), "1+2+3+4+5+6=21", "works for any integer greater than 0")
# 	end

# 	it "should work for the integer 1" do
# 		assert_equals(show_sequence(2), "1=1", "works for one")
# 	end
# end

