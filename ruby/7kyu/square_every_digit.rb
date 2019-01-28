#reflection:

# you are asked to square every digit of a number.

# For example, if we run 9119 through the function, 811181 will come out, because 9^2 is 81 and 1^2 is 1.

# Note: The function accepts an integer and returns an integer

def square_digits(n)
  n_string = n.to_s.split('')
  n_string.map { |num| num.to_i ** 2 }.join.to_i
end

# Test Suite
describe "square method" do
	it "works for a single digit" do
		expect(square_digits(9)).to eql(81)
	end

	it "works for multiple digits" do
		expect(square_digits(919)).to eql(81181)
	end

	it "works when there are 0s" do
		expect(square_digits(909)).to eql(81081)
	end
end