# method selection_sort
def selection_sort array
	(array.length-1).times do |i|
		minindex = i
		minvalue = array[i]
	
		(i).upto(array.length-1) do |j|
			if array[j] < minvalue
				minindex = j
				minvalue = array[j]
			end
			
			if  minvalue < array[i]
				 array[i] , array[minindex] = minvalue, array[i]
			end
		end

	end
	array
end

array = [10,5,8,93,6,2]
arrayAcak = [10,5,8,93,6,2]
hasilSelectionSort = selection_sort(array)
# print selection_sort(array)

puts "Array Acak           : #{arrayAcak}"
puts "Hasil Selection Sort : #{hasilSelectionSort}"