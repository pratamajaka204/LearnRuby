def hitung_vowel(kata)
	vowel =0
	i =0
	while  i < kata.length
		if(kata[i]=="a" || kata[i]=="i" || kata[i]=="u" || kata[i]=="e" || kata[i]=="o") 
				vowel +=1
		end
		i +=1	
	end
	return vowel

end

print "Masukan Kalimat atau Kata : "
str = gets.to_s

string_new = hitung_vowel (str)

puts "Jumlah huruf vokal dari kata #{str} adalah #{string_new} "