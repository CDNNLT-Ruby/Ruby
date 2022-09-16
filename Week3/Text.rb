a=0
for i in 1..10 do
    puts i
    a+=i
end
puts "Tong gia tri la: #{a}"
s=0
for i in 1..100 do
    if i%5==0
        puts i
        s+=i
    end
end
puts "Tong so chia het cho 5 tu 1-100 la: #{s}"
