# method quick sort
def quicksort(array, from=0, to=nil)
    if to == nil
        # Sort the whole array, by default
        to = array.count - 1
    end

    if from >= to
        # Done sorting
        return
    end

    # Take a pivot value, at the far left
    pivot = array[from]

    # Min and Max pointers
    min = from
    max = to

    # Current free slot
    free = min

    while min < max
        if free == min # Evaluate array[max]
            if array[max] <= pivot # Smaller than pivot, must move
                array[free] = array[max]
                min += 1
                free = max
            else
                max -= 1
            end
        elsif free == max # Evaluate array[min]
            if array[min] >= pivot # Bigger than pivot, must move
                array[free] = array[min]
                max -= 1
                free = min
            else
                min += 1
            end
        else
            raise "Inconsistent state"
        end
    end

    array[free] = pivot

    quicksort array, from, free - 1
    quicksort array, free + 1, to
end

arrayAcak = [15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15].shuffle
# Quicksort operates inplace (i.e. in "a" itself)
# There's no need to reassign
hasilQuicksort = quicksort a
puts "Array Acak      : #{arrayAcak}"
puts "Hasil quicksort : #{a}"
