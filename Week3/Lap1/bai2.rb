puts "Enter a :";
a = gets.to_i;
puts "Enter b :";
b = gets.to_i;
puts "Enter c : ";
c = gets.to_i;

if a + b> c && b+c>a && c+a >b
    p = a + b + c ;
    s = Math.sqrt(p*(p-a)*(p-b)*(p-c));
    puts "Perimeter of triangle : #{p}";
    puts "Triangle area : #{s}";
else 
    puts "Not a triangle";
end