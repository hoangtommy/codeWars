#Reflection: The enumerable methods produce an enumerable object when not passed a block. We can use this to chain enumberables together.

# Write a function that takes an array of numbers (integers for the tests) and a target number. 
# It should find two different items in the array that, when added together, give the target value. 
# The indices of these items should then be returned in an array like so: [index1, index2].

# initial correct solution
# def two_sum(numbers, target)
# 	outer_idx = 0
# 	until outer_idx >= numbers.length - 1 do
# 		inner_idx = outer_idx + 1
# 		until inner_idx > numbers.length - 1 do
# 			return [outer_idx, inner_idx] if numbers[outer_idx] + numbers[inner_idx] == target
# 			inner_idx += 1
# 		end
# 		outer_idx += 1
# 	end
# end

# a simplier solution
# def two_sum(numbers, target)
# 	numbers.each_index do |idx|
# 		numbers.each_index do |idx2|
# 			if numbers[idx] + numbers[idx2] == target && idx != idx2
# 				return [idx, idx2]
# 			end
# 		end
# 	end
# end

#solution using new shit
def two_sum(numbers, target)
	pair = numbers.combination(2).to_a.find {|pair| pair.sum == target }
	[numbers.index(pair.first), numbers.index(pair.last)]
end

# Rspec Tests
describe 'two_sum method' do
	it 'works with an array of 4 items' do
		expect(two_sum([0, 2, 3, 4], 5)).to eql([1, 2])
	end

	it 'works when there are multiple answers' do
		expect(two_sum([10, 20, 15, 30, 50, 40], 50)).to eql([0, 5])
	end
end