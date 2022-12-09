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
	puts green("air.00 (1/2) : success")
end

tableau2 = [%x(ruby air.00.rb "")] #test 2 avec erreur d'argument

if tableau2 == ["error: -1\n"]
	compteur_global+=1
	puts pinkish("air.00 (2/2) : error arg invalid")
end

#air.01.rb - Split en fonction
tableau3 = [%x(ruby air.01.rb "Crevette magique dans la mer des étoiles" "la")] #test 1 ok

if tableau3 == ["Crevette magique dans \n mer des étoiles\n"]
	compteur_succès+=1
	compteur_global+=1
	puts green("air.01 (1/2) : success")
end

tableau4 = [%x(ruby air.01.rb "Crevette magique dans la mer des étoiles" "tut")] #test 2 avec erreur provoquée

if tableau4 == ["Crevette magique dans la mer des étoiles\n"]
	compteur_global+=1
	puts red("air.01 (2/2) : failure")
end

#air.02.rb - Concat
tableau5 =  [%x(ruby air.02.rb "je" "teste" "des" "trucs" " ")] #test 1 ok

if tableau5 == ["Je teste des trucs \n"]
	compteur_succès+=1
	compteur_global+=1
	puts green("air.02 (1/1) : success")
end

#air.03.rb - Chercher l'intrus
tableau6 = [%x(ruby air.03.rb 1 2 3 4 5 4 3 2 1)] #test 1 ok
	
if tableau6 == ["5\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.03 (1/2) : success")
end


tableau7 = [%x(ruby air.03.rb bonjour monsieur bonjour)] #test 2 ok

if tableau7 == ["monsieur\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.03 (2/2) : success")
end

#air.04.rb - Un seul à la fois
tableau8 = [%x(ruby air.04.rb "Hello milady,  bien ou quoi??")] #test 1 ok

if tableau8 == ["Helo milady, bien ou quoi?\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.04 (1/1) : success")
end

#air.05.rb - Sur chacun d'entre eux
tableau9 = [%x(ruby air.05.rb 1 2 3 4 5 "+2")] #test 1 ok

if tableau9 == ["3 4 5 6 7\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.05 (1/2) : success")
end

tableau10 = [%x(ruby air.05.rb 10 11 12 20 "-5")] #test 2 ok

if tableau10 == ["5 6 7 15\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.05 (2/2) : success")
end

#air.06.rb - Contrôle de pass sanitaire
tableau11 = [%x(ruby air.06.rb "Michel" "Albert" "Thérèse" "Benoit" "t")] #test 1 ok

if tableau11 == ["Michel\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.06 (1/2) : success")
end

tableau12 = [%x(ruby air.06.rb "Michel" "Albert" "Thérèse" "Benoit" "a")] #test 2 ok

if tableau12 == ["Michel, Thérèse, Benoit\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.06 (2/2) : success")
end

#air.07.rb - Insertion dans un tableau trié
tableau13 = [%x(ruby air.07.rb 1 3 4 2)] #test 1 ok

if tableau13 == ["1 2 3 4 \n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.07 (1/3) : success")
end

tableau14 = [%x(ruby air.07.rb 10 20 30 40 50 60 70 90 33)] #test 2 ok

if tableau14 == ["10 20 30 33 40 50 60 70 90 \n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.07 (2/3) : success")
end

tableau15 = [%x(ruby air.07.rb test test test)] #test 3 avec erreur d'argument

if tableau15 == ["error : -1\n"]
	compteur_global+=1
	puts pinkish("air.07 (3/3) : error arg invalid")
end

#air.08.rb - Mélanger deux tableaux triés
tableau16 = [%x(ruby air.08.rb 10 20 30 fusion 15 25 35)] #test 1 ok

if tableau16 == ["10 15 20 25 30 35\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.08 (1/2) : success")
end

tableau17 = [%x(ruby air.08.rb test failure $$$)] #test 2 avec erreur provoquée

if tableau17 == ["\n"]
	compteur_global+=1
	puts red("air.08 (2/2) : failure")
end

#air.09.rb - Rotation vers la gauche
tableau18 = [%x(ruby air.09.rb "Michel" "Albert" "Thérèse" "Benoit")] #test 1 ok

if tableau18 == ["Albert, Thérèse, Benoit, Michel\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.09 (1/2) : success")
end

tableau19 = [%x(ruby air.09.rb "")] #test 2 avec erreur d'argument

if tableau19 == ["error : -1\n"]
	compteur_global+=1
	puts pinkish("air.09 (2/2) : error arg invalid")
end

#air.10.rb - Afficher le contenu
tableau20 = [%x(ruby air.10.rb A.txt)] #test 1 ok

if tableau20 == ["Hello les amis, comment ça va aujourd’hui?\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.10 (1/2) : success")
end

tableau21 = [%x(ruby air.10.rb "A.txt")] #test 2 ok 

if tableau21 == ["Hello les amis, comment ça va aujourd’hui?\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.10 (2/2) : success")
end

#air.11.rb - Afficher une pyramide
tableau22 = [%x(ruby air.11.rb I 6)] #test 1 ok 

if tableau22 == ["      I\n     III\n    IIIII\n   IIIIIII\n  IIIIIIIII\n IIIIIIIIIII\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.11 (1/2) : success")
end

tableau23 = [%x(ruby air.11.rb I ***)] #test 2 avec erreur d'argument

if tableau23 == ["error : -1\n"]
	compteur_global+=1
	puts pinkish("air.11 (2/2) : error arg invalid")
end

#air.12.rb - Le roi des tris, Quicksort
tableau24 = [%x(ruby air.12.rb 6 5 4 3 2 1)] #test 1 ok 

if tableau24 == ["1  2  3  4  5 6\n"]
	compteur_global+=1
	compteur_succès+=1
	puts green("air.12 (1/1) : success")
end

puts red("TOTAL SUCCESS : (#{compteur_succès}/#{compteur_global})")
