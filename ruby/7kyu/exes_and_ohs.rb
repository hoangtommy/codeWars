#Reflection: #scan uses regex to create a new array. count without an argument can be used on an array like #size

# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

# Examples input/output:

# XO("ooxx") => true
# XO("xooxx") => false
# XO("ooxXm") => true
# XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
# XO("zzoo") => false


#initial correct solution
def XO(str)
	#input: string
	#output: boolean
	str.downcase.count('x') == str.downcase.count('o')
end

#other creative solutions
def XO(str)
	str.scan(/x/i).count == str.scan(/o/i).count
end