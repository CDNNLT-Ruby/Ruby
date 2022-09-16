array = [];
puts "Enter number of array : "
num = gets.to_i;
average = 0
for i in 0..num -1
    puts "Enter num #{i + 1} : "
    value = gets.to_i;
    average += value;
    array.push(value);
end
max = array.max;
min = array.min;
avg = average/array.length;

puts "Gia tri lon nhat : #{max}";
puts "Gia tri nho nhat : #{min}";
puts "Gia tri trung binh : #{avg}";