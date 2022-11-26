#Afficher une pyramide avec nombre de motifs = au nombre d'étages
caractère_et_étages = ARGV[0,1]

caractère = ARGV[0]
nombre_d_étages = ARGV[1].to_i

def afficher_pyramide(motif, étages)

	for i in 0..étages
		print " "*(étages-i), "#{motif} "*i, "\n"
	end
end

afficher_pyramide(caractère, nombre_d_étages)
