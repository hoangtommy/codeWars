# Reflection: The #count iterator!


# Instructions
# Consider an array of sheep where some sheep may be missing from their place. We need a function that counts the number of sheep present in the array (true means present).

# For example,

# [true,  true,  true,  false,
#   true,  true,  true,  true ,
#   true,  false, true,  false,
#   true,  false, false, true ,
#   true,  true,  true,  true ,
#   false, false, true,  true]
# The correct answer would be 17.

# Hint: Don't forget to check for bad values like null/undefined

#initial correct solution
def countSheeps array
    total_sheep = 0
    # iterate through array
    # if element value is true, add one to a counter total_sheep
    array.each do |sheep|
      total_sheep += 1 if sheep
    end
    total_sheep
end

#simpler solutions
def countSheeps array
  array.count(true)
end


