#Reflection: remember the basics. number % 10 gives you the last digit. number / 10 gives you the other digits

#other solution
def seven(m, step=0)
	m < 100 ? [m, step] : seven(m/10 - 2*(m%10), step+1)
end

describe "seven method" do
	it "works!" do
		expect(seven(1603)).to eql([7, 2])
	end	
end