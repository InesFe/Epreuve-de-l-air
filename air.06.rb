#Contrôle de pass sanitaire
chaine_initiale = ARGV[0..-2]
souschaine_donnée = ARGV[-1]
p chaine_initiale
p souschaine_donnée

#fonction pour retirer les élements contenant la lettre 
def supprimer_les_éléments(chaine, sous_chaine)
	
	tableau = []
	i = 0
	chaine_min = chaine.to_s.downcase

	until i >= chaine.length
		
		if (!chaine[i].include? sous_chaine) && (!chaine[i].include? sous_chaine.to_s.upcase)
			tableau << chaine[i]
		end

		i+=1
	end

	return tableau
end

puts supprimer_les_éléments(chaine_initiale, souschaine_donnée)