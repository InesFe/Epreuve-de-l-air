#Afficher une pyramide
caractère_et_étages = ARGV[0,1]

caractère = ARGV[0]
nombre_d_étages = ARGV[1].to_i

def afficher_pyramide(motif, étages)

	#nouveau_tableau = []
	for i in 1..(étages.to_i)

		for j in 1..(étages-i+1)
			print (" ")
		end
		
		for k in 1..(2*i-1)
			print  "#{motif}"
		end

			print "\n"
		
	end
	#return nouveau_tableau
end

afficher_pyramide(caractère, nombre_d_étages)
