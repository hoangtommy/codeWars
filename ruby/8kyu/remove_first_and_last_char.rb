#Reflections: 


# Directions

# It's pretty straightforward. 
# Your goal is to create a function that removes the first and last characters of a string. 
# You're given one parameter, the original string. 
# You don't have to worry with strings with less than two characters.

#Initial correct solution
def remove_char(s)
  # copy the chars at index 1 to but not including the char at index length - 1
  #eg. 'hello' 1= e ... length - 1 = 4
  return s.slice(1, s.length - 2)
end

#Interesting alternative
def remove_char(s)
  s[1...-1]
end