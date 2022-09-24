class Human
    attr_accessor :name, :hair, :height,:weight, :age,:phone,:email,:nation

    def initialize ( name, hair, height,weight,age,phone,email,nation)
        @name = name
        @hair = hair
        @height = height
        @weight = weight
        @age = age
        @email = email
        @phone = phone
        @nation = nation
    end

    def display
        puts "Name : #{name} - Hair : #{hair} - Height #{height} - Weight #{weight} - Email : #{email} - Phone #{phone} - Nation #{nation}"
    end
end


class Student < Human
    attr_accessor :grade1, :grade2, :grade3
    
    def initialize ( name, hair, height,weight,age,phone,email,nation,grade1, grade2,grade3)
        @grade1 = grade1;
        @grade2 = grade2;
        @grade3 = grade3;
        super(name, hair, height,weight,age,phone,email,nation)
    end 

    def average
         (grade1 + grade2 + grade3 )*1.0/3.0
    end

    def display
        super
        puts "Score average : #{average}"
    end

end
students = []
student1=Student.new("Huy","Den",60,168,23,"huy@gmail.com","0961454745","Viet Nam",10,8,9);
student2=Student.new("Sy","Den",60,168,23,"sy@gmail.com","0961454745","Viet Nam",8,9,9);
student3=Student.new("Thien","Den",60,168,23,"thien@gmail.com","0961454745","Viet Nam",9,9,9);
student4=Student.new("Nhan","Den",60,168,23,"nhan@gmail.com","0961454745","Viet Nam",9,10,10);

students.push(student1)
students.push(student2)
students.push(student3)
students.push(student4)
puts '=========Unsorted student list :========='
for i in 0..(students.length-1)
    puts "=====Student #{i+1} ====:"
    puts students[i].display
 end

 puts '=========Sorted student list :========='
 studentsort = students.sort_by{|student| [student.average]}.reverse
 for i in 0..(studentsort.length-1)
    puts "=====Sinh vien #{i+1} =====:"
    puts studentsort[i].display
 end