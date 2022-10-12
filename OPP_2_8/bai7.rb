class GiaoVien
    attr_accessor :hoten224, :tuoi224, :quequan224, :magv224, :luongcung224, :luongthuong224, :tienphat224, :luonglinh224
    def initialize(hoten224, tuoi224, quequan224, magv224, luongcung224, luongthuong224, tienphat224, luonglinh224)
        @hoten224 = hoten224
        @tuoi224 = tuoi224
        @quequan224 = quequan224
        @magv224 = magv224
        @luongcung224 = luongcung224
        @luongthuong224 = luongthuong224
        @tienphat224 = tienphat224
        @luonglinh224 = luonglinh224
    end
 
    def display224()
        puts("-- Ho ten: #{@hoten224} - Tuoi: #{@tuoi224} - Que quan: #{@quequan224} - Ma giao vien: #{@magv224} 
            - Luong cung: #{luongcung224} - Luong thuong: #{luongthuong224} - Tien phat: #{@tienphat224} - Luong thuc linh: #{@luonglinh224} ")
    end
end
class QLGV
    def initialize
    end
 
    def addTeacher(giaviens224, giaovien224)
        giaviens224.push(giaovien224)
    end
 
    def checkCode(giaviens224, ma224)
        for giaovien224 in giaviens224 do
            if giaovien224.magv224 == ma224
                return true
            end
        end
    end
 
    def showListTeacher(giaviens224)
        a = giaviens224.uniq {|giaovien224| giaovien224.magv224}
        for giaovien224 in a do
            giaovien224.display224()
        end
    end
 
    def deleteById(giaviens224, ma224)
        gv224 = giaviens224.select{|giaovien224| giaovien224.magv224 == ma224}
        if (gv224.length != 0)
          giaviens224.delete_if{|teacher| teacher.magv224 == ma224}
          puts("Xoa thanh cong!")
       else
          puts("Khong tim thay!")
       end
    end
end
qlgv224 = QLGV.new
giaoviens224 = []

while(true)
   puts("----Quan ly giao vien----")
   puts("1. Them giao vien")
   puts("2. Xoa giao vien")
   puts("3. Hien thi giao vien")
   puts("4. Thoat khoi chuong trinh")
   puts("-- Chon chuc nang: ")
    cn224 = gets.to_i

    case cn224
        when 1
            puts("== 1. Them giao vien ==")
            print("*Nhap ho ten: ")
            hoten224 = gets.to_s
            print("*Nhap tuoi: ")
            tuoi224 = gets.to_i
            print("*Nhap que quan: ")
            quequan224 = gets.to_s
            print("*Nhap ma giao vien: ")
            magv224 = gets.to_s
            while (qlgv224.checkCode(giaoviens224, magv224) == true)
                print("Ma giao vien da ton tai vui long nhap lai: ")
                magv224 = gets.to_s
            end
            print("*Nhap luong cung: ")
            luongcung224 = gets.to_i
            print("*Nhap luon thuong: ")
            luongthuong224 = gets.to_i
            print("*Nhap tien phat: ")
            tienphat224 = gets.to_i
            luonglinh224 = luongcung224 + luongthuong224 - tienphat224
            giaovient224 = GiaoVien.new(hoten224, tuoi224, quequan224, magv224, luongcung224, luongthuong224, tienphat224, luonglinh224)
            qlgv224.addTeacher(giaoviens224, giaovient224)
        when 2
            puts("== 2. Xoa giao vien ==")
            puts("*Nhap ma giao vien can xoa: ")
            magvdl224 = gets.to_s
            qlgv224.deleteById(giaoviens224, magvdl224)
        when 3
            puts("== 3. Select giao vien ==")
            if(giaoviens224.length != 0) 
                puts("** Danh sach giao vien **")
                qlgv224.showListTeacher(giaoviens224)
            else
                puts("Khong co giao vien!")
            end
        when 4
            puts("== 4. Thoat khoi chuong trinh ==")
            return
        else
            puts("Wrong!")
    end
end