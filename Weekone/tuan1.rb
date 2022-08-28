
hello = 'Xin chào'
name = 'Nguyễn Quang Huy'
code = '1911505310224'
p hello + ' ' + name + ' - ' + code
puts "NHẬP 1 SỐ BẤt KỲ"
number = gets
puts "Số bạn vừa nhập là: #{number}"
puts "---SO SÁNH 2 SỐ---"
puts "NHẬP A: "
a = gets
puts "NHẬP B: "
b = gets
if a > b 
    puts "A lớn hơn B"
    puts "A = #{a}"
else 
    puts "B lớn hơn A"
    puts "B = #{b}"
end