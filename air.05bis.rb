#Sur chacun d'entre eux

#parsing
chiffres_initiaux = ARGV[0..-2]
opérateur = ARGV[-1]

def calculer_selon_l_opérateur(chiffres, op)
	
	résultats = []
	chiffres_int = chiffres.map { |i| i.to_i }
	op_int = op.to_i
	
		for j in 0..chiffres.length-1

			if op_int > 0
				chiffres[j] = chiffres_int[j].to_i+op_int
				résultats << chiffres[j]
			elsif op_int < 0
				chiffres[j] = chiffres_int[j].to_i+op_int
				résultats << chiffres[j].to_i
			end
		end

	return résultats
end

puts calculer_selon_l_opérateur(chiffres_initiaux, opérateur).join(' ')
