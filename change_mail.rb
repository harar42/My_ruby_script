require 'fileutils'

array = []



file = File.new("test.csv", "w+")

File.open("new_annuaire.csv").each_with_index do |line|
	 
	 email = line.strip.split(';')[3]

	if array.include?(email)
		 line = line.gsub(".fr",".fr.xxx1year1bookxxx")
	 else
		 array.push(email)
	end

	file << line
end
 