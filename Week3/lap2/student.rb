class Student
    @name;
    @code;
    @maths;
    @physical;
    @chemistry;
    def initialize(name, code, maths, physical, chemistry)
        @name = name;
        @code = code;
        @maths = maths;
        @physical = physical;
        @chemistry = chemistry;
    end
    def name
        @name
      end
      # Định nghĩa setter để cập nhật biến
    def name=(name)
        @name = name
    end

    def code
        @code
      end
      # Định nghĩa setter để cập nhật biến
    def code=(code)
        @code = code
    end

    def maths
        @maths
      end
      # Định nghĩa setter để cập nhật biến
    def math=(maths)
        @maths = maths
    end


    def physical
        @physical
      end
      # Định nghĩa setter để cập nhật biến
    def physical=(physical)
        @physical = physical
    end

    def  chemistry
        @chemistry
      end
      # Định nghĩa setter để cập nhật biến
    def  chemistry=( chemistry)
        @chemistry =  chemistry
    end

    def average # định nghĩa phương thức instance
        (@maths + @physical + @chemistry )/3
    end

    def toString # định nghĩa phương thức instance
        puts "Name : #{name}Code : #{code}Average #{average}"
    end
end


puts "Enter student name : "
name = gets

puts "Enter student code : "
age = gets

puts "Enter student maths : "
maths = gets.to_i

puts "Enter student physical : "
physical = gets.to_i

puts "Enter student chemistry : "
chemistry = gets.to_i
student = Student.new(name,age,maths,physical,chemistry);
student.toString

