
arr = [];
puts "Enter the first integer : ";
a = gets.to_i;
arr.push(a)
puts "Enter the second integer : ";
b = gets.to_i;
arr.push(b)
puts "Enter the third integer : ";
c = gets.to_i;
arr.push(c);

puts "Ascending array : "
puts arr.sort;

puts "Descending array : "
puts arr.sort.reverse;