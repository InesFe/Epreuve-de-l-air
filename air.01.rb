#Split
#attention pour test : utiliser SIMPLE QUOTE si ! à la fin

#parsing
chaine_à_couper = ARGV[0]
séparateur = ARGV[1]

#fonction
def couper_la_chaine(chaine,sep)

chaine_split = chaine.split
tableau = []
	
		for i in 0..chaine_split.length-1
	
			if chaine_split[i] == sep
				tableau << ("\n")
		
			else 
				tableau << ("#{chaine_split[i]}")
			
			end
		end
	
	
	return tableau
end

#gestion d'erreurs
if chaine_à_couper.empty? || séparateur.empty? 
	puts "error : -1"
else
	puts couper_la_chaine(chaine_à_couper, séparateur).join(" ") #affichage
	exit
end
