#Split
#attention pour test : utiliser SIMPLE QUOTE si ! à la fin

#parsing
chaine_à_couper = ARGV[0].to_s
séparateur = ARGV[1].to_s


#fonction pour couper la chaine
def couper_la_chaine(chaine, sep)
tableau = []
	
	for i in 0..chaine.length-1
		if chaine.include?" "+sep+" "
			
			if chaine[i] ==  sep[-1]
				tableau.push("#{chaine[i]}\n")
		
			else 
				tableau.push("#{chaine[i]}")
			
			end
		else puts "error : -1"
		end
	end

	return tableau
end

puts couper_la_chaine(chaine_à_couper, séparateur).join
