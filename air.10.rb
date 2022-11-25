#Afficher le contenu
#Nom du fichier = "A.txt"

#Solution 1
#puts ARGF.read 

#Solution 2
#parsing
fichier_a_lire = ARGV[0]

if File.exist?(fichier_a_lire.to_s)
	puts File.read(fichier_a_lire) #solution et affichage

elsif fichier_a_lire == nil #gestion d'erreurs
	puts "error : -1"
	exit

else 
	puts "error : ce fichier n'existe pas"
	exit
end
