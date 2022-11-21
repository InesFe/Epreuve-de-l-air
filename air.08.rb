#Mélanger deux tableaux triés

tableaux_initiaux = ARGV
p tableaux_initiaux

#fonction pour séparer le tableau donné en deux tableaux
def séparer_les_tableaux(tableaux)
	
	tableau_1 = []
	tableau_2 = []
	new_array = []
		
		for i in 0..tableaux.length
			
			if tableaux[i] == "fusion"
				
				tableau_1 << tableaux[0..i-1].sort
				tableau_2 << tableaux[i+1..-1].sort

			end
		end

return new_array << (tableau_1 + tableau_2).join(" ").split.map(&:to_i).sort
end

puts séparer_les_tableaux(tableaux_initiaux).join(' ')
