#Concat

#parsing
chaine_à_concat = ARGV[0..-2]
séparateur = ARGV[-1]

#fonction
def concaténer(chaine, sep)
	string = ""
	i = 0	
	
		while i < chaine.length
		
			string << chaine[i]
			string << sep
		i+=1
		end
    
    string = string.capitalize

	return string
end

puts concaténer(chaine_à_concat, séparateur)

