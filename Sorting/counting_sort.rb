# method counting sort
def counting_sort(array,min=0,max=10)
    
    
  	n=max-min+1
	count=Array.new(n,0)
	len=array.length
	output=Array.new(len)
  
  	for i in 0...len
		count[array[i]-min]+=1
	end
	
  	for i in 1...n
		count[i]+=count[i-1]
	end
		
	
	for i in 0...len
		output[count[array[i]-min]-1]=array[i]
		count[array[i]-min]-=1
	end
	
	for i in 0...len
		array[i]=output[i]
	end
	
	return array
	
end

arr = [8, 4, 2, 5, 9, 10, 1,1,2]

puts "Array Acak           : #{arr}"

hasilCountingSort = counting_sort(arr, min=0, max=10)

puts "Hasil Array Counting : #{hasilCountingSort}"
