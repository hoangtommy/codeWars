#Reflection: Review look ahead regex

# Modify the kebabize function so that it converts a camel case string into a kebab case.

# kebabize('camelsHaveThreeHumps') // camels-have-three-humps
# kebabize('camelsHave3Humps') // camels-have-humps

#initial almost correct solution
def kebabize(str)
	str.gsub(/[0-9]/, '')
	str.chars.map do |char|
		if char == char.downcase
			char
		elsif char == char.upcase
			"-#{char.downcase}"
		else
			''
		end
	end
end

#other solutions
def kebabize(string)
	string.gsub(/[0-9]/, '').split(/(?=[A-Z])/).join('-').downcase
end