extract = []
new_extract = []
indice = []
check = 0



File.open("new_annuaire.csv").each_with_index do |line, index|
	 	

	 email = line.strip.split(';')	 
	 extract.push(email[3])	
	
end

puts extract


File.open("new_annuaire.csv").each_with_index do |line, index|
	 
	check = 0
	extract.each do |num|
		if line.strip.include?(num)
	 		check += 1
	 	end
	end
	if check > 1
		print line
	end
end
