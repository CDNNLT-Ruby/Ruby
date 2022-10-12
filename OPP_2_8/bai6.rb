class HocSinh
    attr_accessor :hoten224, :tuoi224, :quequan224, :lop224
    def initialize(hoten224, tuoi224, quequan224, lop224)
        @hoten224= hoten224
        @tuoi224 = tuoi224
        @quequan224 = quequan224
        @lop224 = lop224
    end
end
class QLHS
    def initialize
    end
    
    def addStudent(hocsinhs224, hocsinh224)
        hocsinhs224.push(hocsinh224)
    end
    
    def showListStudent(hocsinhs224)
        for i in 0..(hocsinhs224.length()-1) do
            puts("*Hoc sinh #{i+1}: - Ho ten: #{hocsinhs224[i].hoten224} - Tuoi: #{hocsinhs224[i].tuoi224} - Quen quan: #{hocsinhs224[i].quequan224} - Lop: #{hocsinhs224[i].lop224}")
        end
    end
    
    def showListStudentByAge20(hocsinhs224)
        hs224 = hocsinhs224.select{|hocsinh224| hocsinh224.tuoi224 == 20}
        if (hs224.length() != 0)
            for i in 0..(hs224.length()-1) do
                if(hs224[i].tuoi224 == 20)
                    puts("*Hoc sinh #{i+1}: - Ho ten: #{hs224[i].hoten224} - Tuoi: #{hs224[i].tuoi224} - Quen quan: #{hs224[i].quequan224} - Lop: #{hs224[i].lop224}")
                end
            end
        else
            puts("Khong tim thay!")
        end
        
    end
    
    def showListStudentByAge23(hocsinhs224)
        total224 = hocsinhs224.select{|hocsinh224| hocsinh224.quequan224.include?("Da Nang") && hocsinh224.tuoi224 == 23}.size
        puts("Số lượng các học sinh có tuổi là 23 và quê ở DN: #{total224}")
    end
end
qlhs224 = QLHS.new
students_224 = []

while(true)
    puts("1. Thêm học sinh mới..")
    puts("2. Hien thi hoc sinh")
    puts("3. Hiện thị các học sinh 20 tuổi.")
    puts("4. Số lượng các học sinh có tuổi là 23 và quê ở DN.")
    puts("5. Thoat")
    puts("-- Chon chuc nang: ")
    cn224 = gets.to_i

    case cn224
        when 1
            puts("== 1. Them hoc sinh moi. ==")
            print("*Nhap ho ten: ")
            hoten224 = gets.to_s
            print("*Nhap tuoi: ")
            tuoi224 = gets.to_i
            print("*Nhap que quan: ")
            quequan224 = gets.to_s
            print("*Nhap lop: ")
            lop224 = gets.to_s
            hocsinh224 = HocSinh.new(hoten224, tuoi224, quequan224, lop224)
            qlhs224.addStudent(students_224, hocsinh224)
        when 2
            puts("== 2.Danh sach hoc sinh==")
            if(students_224.length != 0)
                puts("** Danh sach **")
                qlhs224.showListStudent(students_224)
            else
                puts("Khong co sinh vien!")
            end
        when 3 
            puts("== 3. Danh sach sinh vien 20 tuoi. ==")
            qlhs224.showListStudentByAge20(students_224)
        when 4
            puts("== 4. số lượng các học sinh có tuổi là 23 và quê ở DN ==")
            qlhs224.showListStudentByAge23(students_224)
        when 5
            puts("== 5. Thoat chuong trinh ==")
            return
        else
            puts("Wrong!")
    end
end