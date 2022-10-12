class Phong 
    attr_accessor :loaiphong224, :gia224
 
   def initialize(loaiphong224, gia224)
       @loaiphong224 = loaiphong224
       @gia224 = gia224
   end
end
class PhongA < Phong
    def initialize
        super("A",500)
    end
  
    def display224
        puts"--Loai: #{@loaiphong224} - Gia: #{@gia224}"
    end
end
class PhongB < Phong
    def initialize
        super("B",300)
    end
  
    def display224
        puts"--Loai: #{@loaiphong224} - Gia: #{@gia224}"
    end
end
class PhongC < Phong
    def initialize
        super("C",100)
    end
  
    def display224
        puts"--Loai: #{@loaiphong224} - Gia: #{@gia224}"
    end
end
class Nguoi < Phong
    attr_accessor :hoten224, :tuoi224, :cmnd224, :rnt224
    def initialize (hoten224,tuoi224,cmnd224,rnt224,loaiphong224,gia224)
        @hoten224 = hoten224
        @tuoi224 = tuoi224
        @cmnd224 = cmnd224
        @rnt224 = rnt224
        @loaiphong224 = loaiphong224
        @gia224 = gia224
    end

    def input224 
        puts "Nhap ho ten: "
        @hoten224 = gets.chomp
        puts "Nhap tuoi: "
        @tuoi224 = gets.chomp
        puts "Nhap so cmnd: "
        @cmnd224 = gets.chomp
    end

    def display224
        puts "Ho ten: #{@hoten224} - Tuoi : #{@tuoi224} - CMND: #{@cmnd224}"
        puts "Loai phong: #{@loaiphong224} - Gia tien : #{@gia224} - So ngay o: #{@rnt224}"
    end
end
class KhachSan < Nguoi
    def initialize 
        @nguois224 = []
    end
  
    def addRoom(value)
        @nguois224.push(value)
    end
  
    def deletePerson(cmnd224)
      nguoi224 = @nguois224.select{|ps| ps.cmnd224 == cmnd224}
      if (nguoi224.length != 0)
          @nguois224.delete_if{|nguois224| nguois224.cmnd224 == cmnd224}
          puts("Xoa thanh cong!")
       else
          puts("Khong tim thay!")
       end
    end
       
    def caculatorMoney(cccd_248)
      nguoi224 = @nguois224.select{|ps| ps.cmnd224 == cccd_248}
      if (nguoi224.length != 0)
          for i224 in @nguois224 do
              if(i224.cmnd224 == cccd_248)
                 return i224.gia224 * i224.rnt224
              end
          end
       else
          puts("Khong tim thay!")
       end
    end
  
    def display224
      @nguois224.each{ |i224| print i224.display224}
    end
end
khachsan224 = KhachSan.new
while true
    puts "---Chon chuc nang---"
    puts "1. Them nguoi thue phong"
    puts "2. Hien thi thong tin"
    puts "3. Xoa khach theo so cmnd"
    puts "4. Tinh tien thue phong"
    puts "5. Thoat khoi chuong trinh"
    print "Moi ban chon chuc nang: "
    value = gets.to_i
    case value
        when 1
            print "Nhap ten: "
            hoten224 = gets.to_s
            print "Nhap tuoi: "
            tuoi224 = gets.to_i
            print "Nhap so cmnd: "
            cmnd224 = gets.to_s

            puts "Loai phong:"
            puts "1 : Loai A"
            puts "2 : Loai B"
            puts "3: Loai C"

            puts"Chon loai:"
            lp224 = gets.to_i

            case lp224
                when 1
                    phong224 = PhongA.new
                when 2
                    phong224 = PhongB.new
                when 3
                    phong224 = PhongC.new
                else
                    puts "Khong chon"
            end
            print "Nhap so ngay muon o:"
            rnt224 = gets.to_i

            if phong224
                inguoi224 = Nguoi.new(hoten224, tuoi224, cmnd224, rnt224, phong224.loaiphong224, phong224.gia224)
                khachsan224.addRoom(inguoi224)
            end
            
        when 2
            khachsan224.display224

        when 3
            print "Nhap so cmnd can xoa: "
            cmnd224 = gets.to_s
            khachsan224.deletePerson(cmnd224)
            
        when 4
            print "Nhap so Nguoi(cmnd) can tinh tien: "
            cmnd224 = gets.to_s
            total224 = khachsan224.caculatorMoney(cmnd224)
            puts "Totals price: #{total224}"
        when 5
            break
        else
            puts "Nhap sai"

    end
end