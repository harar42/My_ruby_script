#!/usr/bin/env ruby

pwd = Dir.pwd
files  = Dir[pwd + "/*.jpg"]

puts Dir.pwd

files.each_with_index do |file, index|
	
		puts file
         File.rename(file, file.gsub(/[0123456789]/,""))
		puts file		
    
   
end