def sorting(input_array)
    input_array.each_with_index do |precedent, precedent_index|
        antecedent = input_array[precedent_index + 1]
        antecedent_index = precedent_index + 1
        unless antecedent == nil
            if precedent > antecedent
                input_array[antecedent_index] = precedent
                input_array[precedent_index] = antecedent
            end
        end
    end
end

def bubble_sort(input_array)
    while input_array.each_cons(2).all? { |a, b| (a <=> b) <= 0 } == false
        sorting(input_array)
    end
    p input_array
end

bubble_sort([4,3,78,2,0,2])
