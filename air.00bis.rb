str_à_couper = ARGV.to_s
str_séparateur = " "
p str_à_couper
str_séparateur

def couper_str(str_à_couper, str_séparateur)
	new_array = []
	i = 1

	until i > (str_à_couper.length)
		
		if str_à_couper[i] == str_séparateur
		str_à_couper[i] = "#{str_à_couper[i]}\n"
		end
	i+=1
	print str_à_couper[i]
	
	end

end

couper_str(str_à_couper, str_séparateur)
