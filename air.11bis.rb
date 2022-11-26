#Afficher une pyramide avec nombre de motifs = au nombre d'étages
caractère_et_étages = ARGV[0,1]

caractère = ARGV[0]
nombre_d_étages = ARGV[1].to_i

def afficher_pyramide(motif, étages)

	for i in 0..étages
		print " "*(étages-i), "#{motif} "*i
		print "\n"
	end
end

#gestion d'erreurs
if (!caractère_et_étages.empty?) && (caractère.length > 0) && (nombre_d_étages > 0)
	afficher_pyramide(caractère, nombre_d_étages)
else
	puts "error : -1"
	exit
end
