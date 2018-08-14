# 1. jadikan string
# 2. jadiin char
# 3. lalu ulang (potong)
# 4. cacah data nya
# 5. masukan kembali ke nilai integer

x = 120831

result = x.to_s.chars.each_slice(2).map { |a| a.join.to_i }

print "Hasil Manipulasi String : #{result}"