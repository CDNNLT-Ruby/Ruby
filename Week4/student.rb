class Man
    attr_accessor :name, :gender, :height, :weight, :email, :phone

    def initialize(name, gender, height,weight, email, phone)
        @name = name
        @gender = gender
        @height = height
        @weight = weight
        @email = email
        @phone = phone
    end
    
    def display 
        puts "Name : #{name} - Gender : #{gender} - Email : #{email} - Phone #{phone} - Width #{weight} - Height #{height}"
    end
end

class Student < Man
    attr_accessor :code, :grade1, :grade2, :grade3

    def initialize(code,name,gender,height,weight,phone,email, grade1, grade2,grade3)
        super(name, gender, height,weight, email, phone)
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
        @code = code
    end

    def average 
        ((grade1 + grade2 + grade3 )*1.0/3)
    end

    def display 
        super
        puts "Average #{average}"
    end
end
students = []
student1=Student.new(224,"Huy","Nam",60,168,"0961454745","huy@gmail.com",7,8,9)
student2=Student.new(225,"Sy","Nam",60,168,"0961454745","sy@gmail.com",7,8,9)
student3=Student.new(226,"Thien","Nam",60,168,"0961454745","thien@gmail.com",7,8,9)
student4=Student.new(227,"Nhan","Nam",60,168,"0961454745","nhan@gmail.com",7,8,9)
students.push(student1,student2,student3,student4)
for i in 0..(students.length-1)
    puts "=====Sinh vien #{i+1} ====:"
    puts students[i].display
 end