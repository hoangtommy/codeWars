#REFLECTION: break it down method by method

# In this kata you are required to, given a string, replace every letter with its position in the alphabet.

# If anything in the text isn't a letter, ignore it and don't return it.

# "a" = 1, "b" = 2, etc.

# Example
# alphabet_position("The sunset sets at twelve o' clock.")
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

#Inital correct solution
# def alphabet_position(text)
# 	codes = text.downcase.chars.map do |char|
# 		char.ord % 96
# 	end
# 	letters = codes.select do |code|
# 		code <= 26 && code >= 1
# 	end
# 	letters.join(' ')
# end

#Other creative solutions
def alphabet_position(text)
	text.gsub(/[^a-z]/i, '').chars.map { |c| c.downcase.ord - 96 }.join(' ')
end

#tests
describe "test cases for method" do
	it "works for normal sentence" do
		expect(alphabet_position('abc')).to eql('1 2 3')
	end

	it "ignores non-letter characters in the string" do
		expect(alphabet_position('abc$ 123 9ab*c')).to eql('1 2 3 1 2 3')
	end
end