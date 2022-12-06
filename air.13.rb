#Méta exercice

#fonctions couleurs
def red(mytext); "\e[31m#{mytext}\e[0m" ; end
def green(mytext);  "\e[32m#{mytext}\e[0m" ; end


#air.00.rb - Split
tableau = [%x(ruby air.00.rb "Bonjour les gars")]
p tableau

if tableau == ["Bonjour \nles \ngars\n"]
	puts green("air.00 (1/1) : success")

else 
	puts red("air.00 (1/1) : failure")
end




#air.01.rb - Split en fonction
#p %x(ruby air.01.rb "Crevette magique dans la mer des étoiles" "la")

#air.02.rb - Concat
#p %x(ruby air.02.rb "je" "teste" "des" "trucs" " ")

#air.03.rb - Chercher l'intrus
#p %x(ruby air.03.rb 1 2 3 4 5 4 3 2 1)
#p %x(ruby air.03.rb bonjour monsieur bonjour)

#air.04.rb - Un seul à la fois
#p %x(ruby air.04.rb "Hello milady,  bien ou quoi??")

#air.05.rb - Sur chacun d'entre eux
#p %x(ruby air.05.rb 1 2 3 4 5 "+2")
#p %x(ruby air.05.rb 10 11 12 20 "-5")
