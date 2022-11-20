#Insertion dans un tableau trié

liste_chiffres = ARGV[0..-2]
chiffre_à_insérer = ARGV[-1]
p liste_chiffres
p chiffre_à_insérer

def sorted_insert(liste, nouveau_chiffre)
	tableau = []
	liste_triée = liste.map(&:to_i).sort
	p liste_triée
	
	for i in 0..liste_triée.length
		if (nouveau_chiffre.to_i > liste_triée[i].to_i) && (nouveau_chiffre.to_i < liste_triée[i+1].to_i)
			tableau << liste_triée[i].to_s + " " + nouveau_chiffre.to_s
		else
			tableau << liste_triée[i]
		end
	end

	return tableau
	
end

puts sorted_insert(liste_chiffres, chiffre_à_insérer).join(' ')