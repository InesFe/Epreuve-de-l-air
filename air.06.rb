#Contrôle de pass sanitaire

#parsing
chaine_initiale = ARGV[0..-2]
souschaine_donnée = ARGV[-1]

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

#gestion d'erreurs
if !chaine_initiale.empty?
	puts supprimer_les_éléments(chaine_initiale, souschaine_donnée)
else
	puts "error : -1"
	exit
end
