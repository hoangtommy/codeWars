#Reflection: ruby uses \1 instead of $1 to capture the regex match. 

#Problem:
# Complete the solution so that the function will break up camel casing, using a space between words.

# Example
# solution('camelCasing') # => should return 'camel Casing'

#inital correct solution
def solution(string)
    string.gsub(/([a-z]+)([A-Z]+)/, '\1 \2')
end

#other creative solutions
def solution(string)
    string.gsub(/([A-Z])/, ' \1')
end

def solution(string)
    string.gsub(/(?=[A-Z])/, ' ') # ?= is a positive lookahead
end