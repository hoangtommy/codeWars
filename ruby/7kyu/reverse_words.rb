# Reflection: use regex to split along a space or more
#gsub method: string.gsub(/regex/, hash, block, or string)

# Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.

# Examples
# "This is an example!" ==> "sihT si na !elpmaxe"
# "double  spaces"      ==> "elbuod  secaps"

#input: string
#output: string
#process: for each word, reverse the order of the letters ignoring spaces

#initially incorrect solution
def reverse_words(str)
    p str.chars.reverse.join('').split(' ')
end


#one correct solution
def reverse_words3(str)
   str.gsub(/\S+/, &:reverse)
end

#second correct solution
def reverse_words2(str)
    str.split(/(\s+)/).map(&:reverse).join
end


#tests
def assertEquals(actual, expected, testName)
    if actual != expected
        p "#{testName} failed: got #{actual} but expected #{expected}"
    else
        p "#{testName}: passed"
    end
end

assertEquals(reverse_words2('double  spaces'), 'elbuod  secaps', 'works for double spaces')
assertEquals(reverse_words2('triple   spaces'), 'elpirt   secaps', 'works for triple spaces')
assertEquals(reverse_words2('nospace'), 'ecapson', 'works with no spaces')
assertEquals(reverse_words2('hi there'), 'ih ereht', 'works normally')