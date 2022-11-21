#Rotation vers la gauche

mots_donnés = ARGV

def ma_rotation(tableau)

	nouveau_tableau = []

		for i in 0..tableau.length
			if tableau[i] == tableau[0]
				nouveau_tableau << tableau[i+1..-1] + tableau[0]
			end
		end

	return nouveau_tableau
end

puts ma_rotation(mots_donnés)

#nouveau tableau = tableau [1..-1] + tableau 0