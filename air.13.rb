#Méta exercice

#fonctions couleurs
def red(mytext); "\e[31m#{mytext}\e[0m" ; end
def green(mytext);  "\e[32m#{mytext}\e[0m" ; end
def pinkish(mytext); "\e[35m#{mytext}\e[0m" ; end

#compteurs
compteur_global = 0
compteur_succès = 0

#air.00.rb - Split
tableau1 = [%x(ruby air.00.rb "Bonjour les gars")] #test 1 ok

if tableau1 == ["Bonjour \nles \ngars\n"] 
	compteur_succès+=1
	compteur_global+=1
	puts green("air.00 (#{compteur_succès}/#{compteur_global}) : success")
end

tableau2 = [%x(ruby air.00.rb "")] #test 2 avec erreur d'argument
	
if tableau2 == ["error: -1\n"]
	compteur_global+=1
	puts pinkish("air.00 (#{compteur_succès}/#{compteur_global}) : error arg invalid")
end

#air.01.rb - Split en fonction
tableau3 = [%x(ruby air.01.rb "Crevette magique dans la mer des étoiles" "la")] #test 1 ok
	
if tableau3 == ["Crevette magique dans \n mer des étoiles\n"]
	compteur_succès+=1
	compteur_global+=1
	puts green("air.01 (#{compteur_succès}/#{compteur_global}) : success")
end

tableau4 = [%x(ruby air.01.rb "Crevette magique dans la mer des étoiles" "tut")] #test 2 avec erreur provoquée

if tableau4 == ["Crevette magique dans la mer des étoiles\n"]
	compteur_global+=1
	puts red("air.01 (#{compteur_succès}/#{compteur_global}) : failure")
end

#air.02.rb - Concat
tableau5 =  [%x(ruby air.02.rb "je" "teste" "des" "trucs" " ")] #test 1 ok

if tableau5 == ["Je teste des trucs \n"]
	compteur_succès+=1
	compteur_global+=1
	puts green("air.02 (#{compteur_succès}/#{compteur_global}) : success")
end

#air.03.rb - Chercher l'intrus
tableau6 = [%x(ruby air.03.rb 1 2 3 4 5 4 3 2 1)] #test 1 ok
	
if tableau6 == ["5\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.03 (#{compteur_succès}/#{compteur_global}) : success")
end


tableau7 = [%x(ruby air.03.rb bonjour monsieur bonjour)] #test 2 ok

if tableau7 == ["monsieur\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.03 (#{compteur_succès}/#{compteur_global}) : success")
end

#air.04.rb - Un seul à la fois
tableau8 = [%x(ruby air.04.rb "Hello milady,  bien ou quoi??")] #test 1 ok

if tableau8 == ["Helo milady, bien ou quoi?\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.04 (#{compteur_succès}/#{compteur_global}) : success")
end

#air.05.rb - Sur chacun d'entre eux
tableau9 = [%x(ruby air.05.rb 1 2 3 4 5 "+2")] #test 1 ok

if tableau9 == ["3 4 5 6 7\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.05 (#{compteur_succès}/#{compteur_global}) : success")
end

tableau10 = [%x(ruby air.05.rb 10 11 12 20 "-5")] #test 2 ok

if tableau10 == ["5 6 7 15\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.05 (#{compteur_succès}/#{compteur_global}) : success")
end

#air.06.rb - Contrôle de pass sanitaire
tableau11 = [%x(ruby air.06.rb "Michel" "Albert" "Thérèse" "Benoit" "t")] #test 1 ok

if tableau11 == ["Michel\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.06 (#{compteur_succès}/#{compteur_global}) : success")
end

tableau12 = [%x(ruby air.06.rb "Michel" "Albert" "Thérèse" "Benoit" "a")] #test 2 ok

if tableau12 == ["Michel, Thérèse, Benoit\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.06 (#{compteur_succès}/#{compteur_global}) : success")
end

#air.07.rb - Insertion dans un tableau trié















