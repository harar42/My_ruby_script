#!/usr/bin/env ruby

pwd = Dir.pwd
files  = Dir[pwd + "/*.png"]

puts Dir.pwd

files.each_with_index do |file, index|
	
		
		name = file.gsub(pwd + '/',"")

        File.rename(name, name.gsub(/[0123456789 ]/,""))
		
   
end