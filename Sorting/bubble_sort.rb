# method buble sort
def bubble_sort(array)
   n = array.length
   swapped = true
   while swapped do
     swapped = false
     (n - 1).times do |i|
       if array[i] > array[i + 1]
         array[i], array[i + 1] = array[i + 1], array[i]
     swapped = true
       end
     end
   end
   array 
end

arr = [2,3,100,3,5,4,10,7]
puts "Array Acak      : #{arr}"

arrayBuble = bubble_sort(arr)
puts "Hasil Bublesort : #{arrayBuble}"