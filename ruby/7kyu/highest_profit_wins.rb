#Reflection: remember ruby has these neat methods like .minmax

# Description:
# Story
# Ben has a very simple idea to make some profit: he buys something and sells it again. Of course, this wouldn't give him any profit at all if he was simply to buy and sell it at the same price. Instead, he's going to buy it for the lowest possible price and sell it at the highest.

# Task
# Write a function that returns both the minimum and maximum number of the given list/array.

# Examples
# min_max([1,2,3,4,5])   == [1,5]
# min_max([2334454,5])   == [5, 2334454]
# min_max([1])           == [1, 1]

#my initially correct solution
def min_max(lst)
  return [lst[0], lst[0]] if lst.size < 2
  sorted = lst.sort { |a, b| a - b }
  [sorted.first, sorted.last]
end

#some other intersting solutions
def min_max(lst)
  lst.minmax
end