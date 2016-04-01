#!/usr/bin/env ruby

pwd = Dir.pwd
files  = Dir[pwd + "/*.jpg"]

puts Dir.pwd

files.each_with_index do |file, index|
	
    if file.include? "Copie"
     File.rename(file, file.gsub(" - Copie",""))
		puts file		
     end
   
end