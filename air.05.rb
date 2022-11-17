#Sur chacun d'entre eux

#parsing
chiffres_initiaux = ARGV[0..-2]
opérateur = ARGV[-1]

#fonction
def calculer_selon_l_opérateur(chiffres, op)
	
	résultats = []
	chiffres_int = chiffres.map { |i| i.to_i }
	
		for j in 0..chiffres.length-1

			chiffres[j] = chiffres_int[j].to_i + op.to_i
			résultats << chiffres[j]
			
		end

	return résultats
end

#gestion d'erreurs
if !chiffres_initiaux.empty? && chiffres_initiaux.all?(/\d/)
	puts calculer_selon_l_opérateur(chiffres_initiaux, opérateur).join(' ')
else
	puts "error : -1"
	exit
end
