print "Masukan Investasi : "
investamount = gets.to_i

print "Masukan Suku Bunga : "
rate = gets.to_i

print "Masukan Berapa Tahun : "
years = gets.to_i

rate *= 0.01

def investasi(investfuture, rate, years)
	(investfuture * ((1+ rate ) ** (years * 12))).round(2)
end

print "Years        FutureValue \n"

for i in 1..years do
	print "#{i}            ", investasi(investamount, rate/12, i), "\n"
end 



