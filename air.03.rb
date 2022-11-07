#Chercher l'intrus

#parsing
liste_initiale = ARGV

#fonction
def chercher_intrus(liste)

	résultats = []
	liste_triée = liste.sort
	i = 0

		while i < liste.length

			if liste_triée[i] != liste_triée[i-1] && liste_triée[i] != liste_triée[i+1]
				résultats << liste_triée[i]
			end

		i+=1
		end

return résultats
end

#gestion d'erreurs
if liste_initiale.empty?
	puts "error : -1"
else
	puts chercher_intrus(liste_initiale) #affichage
end 
