#Reflection: #scan(regex) can be used to create an array with all the matches

# Return the number (count) of vowels in the given string.
# We will consider a, e, i, o, and u as vowels for this Kata.
# The input string will only consist of lower case letters and/or spaces.

#Initial Correct Solution
def getCount(inputStr)
  inputStr.split('').count { |char| char =~ /[aeiou]/ }
end

#other solutions
def getCount(inputStr)
  inputStr.count('aeiou')
end

def getCount(inputStr)
  inputStr.scan(/[aeiou]/i).size
end