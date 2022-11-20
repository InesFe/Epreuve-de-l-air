#Insertion dans un tableau trié

#parsing
liste_chiffres = ARGV[0..-2]
chiffre_à_insérer = ARGV[-1]

#fonction
def sorted_insert(liste, nouveau_chiffre)
	tableau = []
	liste_triée = liste.map(&:to_i).sort
	
	for i in 0..liste_triée.length
		if (nouveau_chiffre.to_i > liste_triée[i].to_i) && (nouveau_chiffre.to_i < liste_triée[i+1].to_i)
			tableau << liste_triée[i].to_s + " " + nouveau_chiffre.to_s
		else
			tableau << liste_triée[i]
		end
	end

	return tableau
	
end

#gestion d'erreurs 
if (!liste_chiffres.empty?) && (liste_chiffres.all?(/\d/))
	puts sorted_insert(liste_chiffres, chiffre_à_insérer).join(' ') #affichage
else
	puts "error : -1"
	exit
end
