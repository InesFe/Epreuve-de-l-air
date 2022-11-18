#Contrôle de pass sanitaire
chaine_initiale = ARGV[0..-2]
souschaine_donnée = ARGV[-1]

#fonction pour retirer les élements contenant la lettre 
def supprimer_les_éléments(chaine, sous_chaine)
	
	tableau = []
	i = 0
	#chaine_min = chaine.to_s.downcase
	#p chaine_min

	until i >= chaine.length-1
		
		if !chaine[i].include? sous_chaine
			tableau << chaine[i]
		
		end
		
		i+=1
	end

	return tableau
end

puts supprimer_les_éléments(chaine_initiale, souschaine_donnée)