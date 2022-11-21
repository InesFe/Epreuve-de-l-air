#Rotation vers la gauche

#parsing
arguments_donnés = ARGV 

#fonction
def ma_rotation(tableau)

	nouveau_tableau = []
	nouveau_tableau << tableau[1..-1]
	nouveau_tableau << tableau[0]
		
return nouveau_tableau.join(', ')
end

#gestion d'erreurs
if (!arguments_donnés.empty?) && (arguments_donnés.length > 1)
	puts ma_rotation(arguments_donnés)
else
	puts "error : -1"
	exit
end
