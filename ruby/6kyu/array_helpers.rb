#Reflection: when writing class methods, we don't need to explicitly state self

# This kata is designed to test your ability to extend the functionality of built-in classes. In this case, we want you to extend the built-in Array class with the following methods: square(), cube(), average(), sum(), even() and odd().

# Explanation:

# square() must return a copy of the array, containing all values squared
# cube() must return a copy of the array, containing all values cubed
# average() must return the average of all array values; on an empty array must return NaN (note: the empty array is not tested in Ruby!)
# sum() must return the sum of all array values
# even() must return an array of all even numbers
# odd() must return an array of all odd numbers

#initial correct solution
# class Array
#   def square
#     self.map { |n| n**2 }
#   end

#   def cube
#     self.map { |n| n**3 }
#   end
  
#   def average
# #     return NaN if self.size < 1
#     self.sum / self.size
#   end
  
#   def sum
#     self.reduce(:+)
#   end
  
#   def even
#     self.select { |n| n % 2 == 0 }
#   end
  
#   def odd
#     self.select { |n| n % 2 != 0 }
#   end
# end

#refactored: we don't need to include select
class Array
	def square
		map { |n| n**2 }
	end

	def cube
		map { |n| n**3 }
	end

	def average
		sum / size
	end

	def sum
		reduce(:+)
	end

	def even
		select(&:even?)
	end

	def odd
		select(&:odd?)
	end
end

#tests
describe 'extending array functionality'  do
	arr = [1, 2, 3]
	it 'works for square' do
		expect(arr.square).to eql([1, 4, 9])
	end

	it 'works for cube' do
		expect(arr.cube).to eql([1, 8, 27])
	end

	it 'works for average' do
		expect(arr.average).to eql(2)
	end

	it 'works for sum' do
		expect(arr.sum).to eql(6)
	end

	it 'works for even' do
		expect(arr.even).to eql([2])
	end

	it 'works for odd' do
		expect(arr.odd).to eql([1, 3])
	end
end
