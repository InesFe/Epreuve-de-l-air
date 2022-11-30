#Le roi des tris, Quicksort

#parsing
tableau = ARGV

#fonction
def my_quicksort(liste)
    
    new_array = []
    return liste if liste.length <= 1

    pivot = liste[-1].to_i
    tableau_des_petits = []
    tableau_des_grands = []
    i = 0
    
        while i < liste.length
        
            if liste[i].to_i < pivot
                tableau_des_petits << liste[i]
            elsif liste[i].to_i > pivot
                tableau_des_grands << liste[i]
            end
        
        i+=1
        end

    return new_array = my_quicksort(tableau_des_petits), pivot, my_quicksort(tableau_des_grands)
end

#gestion d'erreur
if (tableau.length >= 1) && tableau.all?(/\d/)
    puts my_quicksort(tableau).join(' ').strip #affichage
else 
    puts "error : -1"
end
