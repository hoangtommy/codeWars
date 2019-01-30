#reflection: we can find an int inside a string by splitting the string and using #min or using regex [/\d/]
	#using sort_by we can sort the array

#intial incorrect solution
# def order(string)
# 	#split the string into individual words
# 	string.split(' ').sort { |word1, word2| find_int(word1, word2) }
# 	#iterate through the words using sort
# 		#use a helper method to id the integer in the word
# 		#sort accordingly
# end

#one possible solution
def order(string)
	string.split.sort_by { |word| word[/\d/] }.join(' ')
end

#test suite

describe 'the order method' do 
	it 'returns empty string when argument is empty' do
		expect(order('')).to eq('')
	end

	it 'works for a normal sentence' do
		expect(order('is2 Thi1s T4est 3a')).to eq('Thi1s is2 3a T4est')
	end

	it 'works when there are skips in numbers' do
		expect(order('t2wo O1ne 6ix Four4')).to eql('O1ne t2wo Four4 6ix')
	end
end