#Reflection: the .chars method is useful. Introduced to the chunk method...


#Instructions
# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

# For example:

# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]

#Intial correct solution
#Reflection: I wonder how I might address the string or array input more efficiently?
def unique_in_order(iterable)
  return [] if iterable.length < 1
  
  if iterable.is_a?(String)
    iterable = iterable.split('')
  end
  
  list = [iterable[0]]
  iterable.each do |item|
    if (item != list.last)
      list.push(item)
    end
  end
  list
end

#Similar approach to original thought but simpler
def unique_in_order(iterable)
  array = []
  iterable.length.times do |index|
  	array << iterable[index] if iterable[index] != iterable[index + 1]
  end
  array
end