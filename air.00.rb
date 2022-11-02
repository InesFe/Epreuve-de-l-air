#majuscule
#attention pour test : utiliser SIMPLE QUOTE si ! à la fin

#parsing
chaine_min = ARGV[0].to_s
chaine_vide = " "

#fonction
def mettre_en_maj(chaine_min)

	for i in 0..chaine_min.length-1
	
		if chaine_min[i] == " "
			chaine_vide = "#{chaine_min[i]}\n"
	
		else 
			chaine_vide = chaine_min[i]
		
		end
		print chaine_vide
	end
end

#gestion d'erreurs
if chaine_min =~ /\D/ && chaine_min.length >=2
	mettre_en_maj(chaine_min) #affichage

else
	puts "error: -1"
	exit

end
