#Un seul à la fois

#parsing
phrase_initiale = ARGV

#fonction
def retirer_doublons(phrase)
	phrase_string = phrase.to_s
	résultats = []
	i = 0

		while i < phrase_string.length

			if phrase_string[i] != phrase_string[i-1]
				résultats << phrase_string[i]
			end

		i+=1
		end

return résultats
end

#gestion d'erreurs
if phrase_initiale.empty?
	puts "error : -1"
	exit
else
	print retirer_doublons(phrase_initiale).join #affichage
end 
