#Reflections: Hashes can be used to creatively set up opposites. eg. OPPOSITE['NORTH'] => 'SOUTH' and therefore opposite

#initial incorrect solution
# def reduce_dir(directions)
# 	final_dir = []
# 	#for each direction
# 		#check if its adjacent neighbor is its opposite
# 		opposite?(current, neighbor)
# 		#if it is not, move onto the next item
# 		#if it is, splice both of them out of the array
# 		#repeat
# 	directions.each_with_index do |dir, idx|
# 		if opposite?(dir, directions[idx + 1])
# 			directions.slice(0)
# 		end
# 	end
# end

#solution
OPPOSITE = {
		'NORTH' => 'SOUTH',
		'SOUTH' => 'NORTH',
		'EAST' => 'WEST',
		'WEST' => 'EAST'
}

def reduce_dir(directions)
	final = []
	directions.each do |dir|
		OPPOSITE[dir] == final.last ? final.pop : final.push(dir)
	end
	final
end


#test suite
describe 'reduce_dir method' do 
	it 'cancels out opposite directions' do
		expect(reduce_dir(['NORTH', 'SOUTH', 'EAST', 'WEST'])).to eq([])
	end

	it 'works for regular directions' do
		expect(reduce_dir(['NORTH', 'SOUTH', 'EAST'])).to eq(['EAST'])
	end

	it 'reduces directions more than once' do
		expect(reduce_dir(['NORTH', 'SOUTH', 'SOUTH', 'EAST', 'WEST', 'NORTH', 'WEST'])).to eq(['WEST'])
	end
end