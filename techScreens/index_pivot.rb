# require 'pry'

def find_pivot(number_list, mid_index = (number_list.length / 2).round)
	left_half = number_list[0...mid_index]
	left_sum = left_half.sum

	right_half = number_list[mid_index + 1..number_list.length - 1] # we don't to count the potential pivot element
	right_sum = right_half.sum
	
	# binding.pry
	return -1 if (left_sum != right_sum) && (mid_index == 1 || mid_index == number_list.length - 2)

	if left_sum == right_sum
		return mid_index
	elsif left_sum > right_sum
		return find_pivot(number_list, mid_index - 1)
	else
		return find_pivot(number_list, mid_index + 1)
	end
end

# Test Suite
describe "find_pivot method" do
	it "should return -1 for arrays without pivots" do
		expect(find_pivot([1, 4, 6, 3, 5])).to eql(-1)
	end

	it "should work for arrays with pivot" do
		expect(find_pivot([1, 4, 6, 3, 2])).to eql(2)
	end	

	it "should account for pivots at the far right" do
		expect(find_pivot([0, 3, 1, 2, 4])).to eql(3)
	end

	it "should account for arrays with even elements" do
		expect(find_pivot([70, 40, 10, 30, 20, 10])).to eql(1)
	end

	it "should work for an array with 2 elements" do
		expect(find_pivot([20, 20])).to eql(-1)
	end

	it "should work for arrays with negative numbers" do
		expect(find_pivot([-1, 3, 6, 2, 7, -5, 6, 0])).to eql(3)
	end

	# To-Test: test for arrays with multiple pivots
end	
