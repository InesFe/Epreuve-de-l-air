#Fonction Unique

#parsing
liste_initiale = ARGV

#fonction 
def chercher_les_uniques(liste)
	
	résultats = []
	i = 0

	while i < liste.length
		
		if !résultats.include? liste[i]
			résultats << liste[i]
		end
	
	i+=1
	end

	return résultats
end

#gestion d'erreurs
if liste_initiale.empty?
	puts "error : -1"
else
	puts chercher_les_uniques(liste_initiale)
end
