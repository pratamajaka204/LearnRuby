def setMiddleChar(angka)

  a, b = (angka.length - 2).divmod(2)
  angka[a, b + 1]
end






print "Masukan Angka : "
angka = gets.to_s

hasil = setMiddleChar(angka)

puts "Middle of word anda : #{hasil}"