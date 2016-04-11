extract = []
new_extract = []
indice = []
check = 0



File.open("new_annuaire.csv").each_with_index do |line, index|
	 	 
	 extract.push(line.strip)	
	
end

print extract

File.open("new_annuaire.csv").each_with_index do |line, index|
	 
	
	extract.each do |num|
		if line.eql?(num)
	 		check += 1
	 	end
	end
	 puts check
	if check > 1
		puts line
	end
end



# files.each_with_index do |file, index|
	
#     if file.include? "Copie"
#      File.rename(file, file.gsub(" - Copie",""))
# 		puts file		
#      end
   
# end