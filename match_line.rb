array = [9711, 9115, 9210, 9493, 9462, 9310, 9116, 8749, 8830, 7639, 9538, 8215, 9561, 8222, 7868, 7645, 9494, 7580, 8817, 8233, 9584, 7598, 7886, 7601, 9571, 7604, 9605, 8282, 7888, 9002, 9768, 9769, 9169, 9190, 9158, 9154, 9162, 9163, 9165, 9183, 9007, 9124, 7620, 7566, 7624, 7567, 9036, 7896, 7629, 7297, 9752, 9748, 9483, 8577, 7631, 8938, 7632, 7633, 8283, 7689, 7634, 7866, 8613, 7640, 7571, 7572, 7862, 7573, 7574, 8960, 7865, 7575, 7576, 9486, 7577, 7646, 7578, 7579, 9034, 9008, 7581, 7647, 9132, 7871, 9744, 7648, 7582, 7583, 7584, 7649, 7651, 8936, 7585, 9128, 7653, 7587, 7588, 8594, 7895, 9005, 7618, 9129, 7656, 7590, 7592, 7658, 8530, 8549, 8500, 9155, 7593, 7594, 7596, 7597, 7661, 7885, 7662, 9492, 7664, 7599, 7600, 7863, 7667, 7602, 9003, 7669, 7887, 7874, 7565, 9006, 7900, 9673, 7605, 7870, 7869, 7672, 7607, 7674, 7911, 7675, 7676, 7809, 7901, 7889, 7679, 7867, 7681, 8585, 9013, 7609, 7682, 7873, 7683, 7685, 8928, 7610, 7611, 7686, 7864, 7872, 7212, 7687, 7613, 9756, 8542, 7614, 7616, 8548, 7271, 7952, 8351, 7149, 7411, 8841, 8327, 8331, 8839, 7558, 8417, 8403, 6887, 8392, 9041, 7735, 9037, 8853, 7247, 7744, 8332, 8415, 7188, 8329, 8414, 7754, 8581, 8339, 8180, 8324, 7418, 7925, 8532, 8053, 8566, 6888, 7725, 6908, 8421, 7934, 7902, 9669, 9140, 9670, 9495, 9220, 9663, 9491, 9664, 9142, 9141, 9488, 9665, 9484, 8554, 8823, 8560, 9108, 8419, 8051, 8426, 8050, 8031, 8292, 8054, 8312, 8427, 8009, 9671, 9485, 9710, 9675, 9496, 9662, 8608, 8847, 8591, 8609, 9026, 8619, 8576, 8553, 8540, 9033, 8604, 9021, 9035, 8855, 9024, 8587, 8601, 8850, 8620, 8317, 8425, 8311, 8428, 8272, 7941, 7959, 9307, 8279]

extract = []



array.each do |number|
File.open("1516_liste_eleves_avec_mail.csv_20160331-155516.csv_20160331-160740.csv").each do |line|

	# print line
	# num_check = 0
	 
	 if line.include? number.to_s
		# extract.each do |check_line|
			
		# 	print check_line
		# 	print "    "
		# 	print line.strip
		# 	print "    "
		# 	if check_line == line.strip
		# 		num_check = 1
		# 		if num_check = 0
	 # 			extract.push(line.strip)
	 # 		end
	 # 			puts "tt"
	 # 		end
	 # 		puts 5
	 # 	end
	 # if !extract.include? "allo"
	 extract.push(line.strip)
	 # end
	end
	
end

	
end

puts extract





# files.each_with_index do |file, index|
	
#     if file.include? "Copie"
#      File.rename(file, file.gsub(" - Copie",""))
# 		puts file		
#      end
   
# end