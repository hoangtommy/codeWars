#Reflection: There's a #step method!? It iterates through a range in a set increment

# Your task is to make function, which returns the sum of a sequence of integers.

# The sequence is defined by 3 non-negative values: begin, end, step.

# If begin value is greater than the end, function should returns 0

# Examples

# sequenceSum(2,2,2) === 2
# sequenceSum(2,6,2) === 12 // 2 + 4 + 6
# sequenceSum(1,5,1) === 15 // 1 + 2 + 3 + 4 + 5
# sequenceSum(1,5,3) === 5 // 1 + 4

#Intial incorrect solution:
def sequence_sum(begin_number, end_number, step)
  return 0 if begin_number > end_number
  sum = 0
  until begin_number > end_number
  	sum += step
  end
end

#Creative solutions
def sequence_sum(begin_number, end_number, step)
  (begin_number..end_number).step(step).reduce (0, :+)
  #same as (begin_number..end_number).step(step).reduce { |sum, num| sum + num }
end

#Recursive solution
def sequence_sum(begin_number, end_number, step)
  return 0 if begin_number > end_number
  begin_number += sequence_sum(begin_number + step, end_number, step)
end