tableau = ARGV
p tableau

def séparer_les_tableaux(liste)
    
    new_array = []
    #return liste if liste.length = 1

    pivot = liste[-1].to_i
    p pivot
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

  return new_array << tableau_des_petits, pivot, tableau_des_grands

end

p séparer_les_tableaux(tableau)
