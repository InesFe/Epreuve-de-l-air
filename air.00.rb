#majuscule
#attention pour test : utiliser SIMPLE QUOTE si ! à la fin

#parsing
chaine_à_couper = ARGV[0].to_s


#fonction
def couper_la_chaine(chaine)

tableau = []
	
	for i in 0..chaine.length-1
	
		if chaine[i] == " "
			tableau.push("#{chaine[i]}\n")
		
		else 
			tableau.push("#{chaine[i]}")
			
		end

		#print tableau
	end

	return tableau
end

#gestion d'erreurs
if chaine_à_couper.length >=2
	puts couper_la_chaine(chaine_à_couper).join #affichage

else
	puts "error: -1"
	exit
end
