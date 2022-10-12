class SinhVien
    attr_accessor :hoten224, :tuoi224, :lop224
    def initialize(hoten224, tuoi224, lop224)
        @hoten224= hoten224
        @tuoi224 = tuoi224
        @lop224 = lop224
    end
end
class TheMuon < SinhVien
    
    attr_accessor :mapm224, :ngaymuon224, :hantra224, :sohieusach224

    def initialize(hoten224, tuoi224, lop224, mapm224, ngaymuon224, hantra224, sohieusach224)
        super(hoten224, tuoi224, lop224)
        @mapm224 = mapm224
        @ngaymuon224 = ngaymuon224
        @hantra224 = hantra224
        @sohieusach224 = sohieusach224
    end

    def display224()
        puts("Ho ten: #{@hoten224} - Tuoi: #{@tuoi224} - Lop: #{lop224} - Ma phieu muon: #{@mapm224} - Ngay muon: #{@ngaymuon224} - Han tra: #{@hantra224} - So hieu sach: #{@sohieusach224}")
    end
end
class QLMS
    def initialize
        
    end
 
    def addTicket(vesachs224, themuon224)
        vesachs224.push(themuon224)
    end
 
    def checkCode(vesachs224, ma224)
        for themuon224 in vesachs224 do
            if themuon224.mapm224 == ma224
                return true
            end
        end
    end
 
    def deleteById(vesachs224, ma224)
        ts224 = vesachs224.select{|themuon224| themuon224.mapm224 == ma224}
        if (ts224.length() != 0)
          vesachs224.delete_if{|themuon224| themuon224.mapm224 == ma224}
          puts("Xoa thanh cong!")
       else
          puts("Khong tim thay ma nay!")
       end
    end
 
    def showListCoupon(vesachs224)
       if (vesachs224.length() != 0)
          puts("** Danh sach phieu muon **")
          for themuon224 in vesachs224 do
              themuon224.display224()
          end
      else
          puts("Danh sach trong!")
      end
    end
 end
qlms224 = QLMS.new
pms224 = []

while(true)
    puts("---- Quan ly muon sach ----")
    puts("1. Them the muon")
    puts("2. Xoa the muon")
    puts("3. Hien thi danh sach muon")
    puts("4. Thoat khoi chuong trinh")
    puts("-- Chon chuc nang: ")
    cv224 = gets.to_i

    case cv224
        when 1
            puts("== 1. Them the muon sach ==")
            print("Nhap ho ten: ")
            hoten224 = gets.to_s
            print("Nhap tuoi: ")
            tuoi224 = gets.to_i
            print("Nhap lop: ")
            lop224 = gets.to_s
            print("*Nhap ma phieu muon: ")
            mapm224 = gets.to_s
            while (qlms224.checkCode(pms224, mapm224) == true)
                print("Phieu muon da ton tai: ")
                mapm224 = gets.to_s
            end
            print("*Nhap ngay muon: ")
            ngaymuon224 = gets.to_i
            print("Nhap han tra: ")
            hantra224 = gets.to_i
            print("Nhap so hieu sach: ")
            sohieusach224 = gets.to_s
            themuon224 = TheMuon.new(hoten224, tuoi224, lop224, mapm224, ngaymuon224, hantra224,sohieusach224)
            qlms224.addTicket(pms224, themuon224)
        when 2
            puts("== 2. Xoa the muon theo ma phieu muon ==")
            puts("*Nhap ma phieu muon can xoa: ")
            mapmdl224 = gets.to_s
            qlms224.deleteById(pms224, mapmdl224)
        when 3
            puts("== 3. Danh sach phieu muon ==")
            qlms224.showListCoupon(pms224)
        when 4
            puts("== 4. Thoat khoi chuong trinh ==")
            return
        else
            puts("Wrong!")

    end
end