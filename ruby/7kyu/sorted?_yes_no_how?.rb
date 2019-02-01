#reflection:

# Complete the method which accepts an array of integers, and returns one of the following:

# "yes, ascending" - if the numbers in the array are sorted in an ascending order
# "yes, descending" - if the numbers in the array are sorted in a descending order
# "no" - otherwise
# You can assume the array will always be valid, and there will always be one correct answer.

def is_sorted_and_how(numbers)
	if numbers.sort == numbers
		"yes, ascending"
	elsif numbers.sort.reverse == numbers
		"yes, descending"
	else
		"no"
	end
end

#Test Suite
describe "is_sorted_and_how method" do
	it "works for ascending numbers" do
		expect(is_sorted_and_how([1, 2, 3])).to eql("yes, ascending")
	end

	it "works for descending numbers" do
		expect(is_sorted_and_how([3, 2, 1])).to eql("yes, descending")
	end

	it "works for random numbers" do
		expect(is_sorted_and_how([2, 3, 1])).to eql("no")
	end	
end