class ThiSinh
    attr_accessor :sobd224, :hoten224, :diachi224, :mucut224
    def initialize (sobd224,hoten224,diachi224,mucut224)
        @sobd224 = sobd224
        @hoten224 = hoten224
        @diachi224 = diachi224
        @mucut224 = mucut224
    end
    def initialize ()
    
    end
    def input224 
        puts "Nhap so bao danh: "
        @sobd224 = gets.chomp
        puts "Nhap ho ten: "
        @hoten224 = gets.chomp
        puts "Nhap dia chi: "
        @diachi224 = gets.chomp
        puts "Nhap muc uu tien: "
        @mucut224 = gets.chomp
    end
    def display224
        puts "So bao danh: #{@sobd224} - Ho ten : #{@hoten224} - Dia chi #{@diachi224} - Muc uu tien: #{@mucut224}"
    end
end
class KhoiA < ThiSinh
    attr_accessor :toan224, :ly224, :hoa224
    def initialize (sobd224,hoten224,diachi224,mucut224,toan224,ly224,hoa224)
        @toan224 = toan224
        @ly224 =ly224
        @hoa224 = hoa224
        super(sobd224,hoten224,diachi224,mucut224)
    end
    def initialize ()
        
    end

    def display224
        super
        puts "Khoi A - Mon hoc: Toan - Ly - Hoa"
    end
end
class KhoiB < ThiSinh
    attr_accessor :toan224, :sinh224, :hoa224
    def initialize (sobd224,hoten224,diachi224,mucut224,toan224,sinh224,hoa224)
        @toan224 = toan224
        @sinh224 =sinh224
        @hoa224 = hoa224
        super(sobd224,hoten224,diachi224,mucut224)
    end
    def initialize ()
        
    end

    def display224
        super
        puts "Khoi B - Mon hoc: Toan - Hoa - Sinh"
    end
end
class KhoiC < ThiSinh
    attr_accessor :van224, :su224, :dia224
    def initialize (sobd224,hoten224,diachi224,mucut224,van224,su224,dia224)
        @van224 = van224
        @su224 =su224
        @dia224 = dia224
        super(sobd224,hoten224,diachi224,mucut224)
    end
    def initialize ()
        
    end

    def display224
        super
        puts "Khoi C - Mon hoc: Van - Su - Dia"
    end
end

class TuyenSinh
    def initialize
    end

    $tuyensinhs224 = []
    
    def addThiSinh224
        puts "---Chon khoi---"
        puts "1. Khoi A"
        puts "2. Khoi B"
        puts "3. Khoi C"
        puts "Moi ban chon chuc nang: "
        choose224 = gets.to_i
        if choose224 == 1 
            thisinh224 =KhoiA.new
        elsif choose224 == 2
            thisinh224 =KhoiB.new
        else 
            thisinh224 = KhoiC.new
        end
        thisinh224.input224
        $tuyensinhs224 << thisinh224       
    end

    def searchThiSinh224
        puts "Nhap ten so bao danh"
        sobdtk224 = gets.chomp
        $tuyensinhs224.each do |sb224|
            if sb224.sobd224.include? sobdtk224
                sb224.display224 
            end
        end
    end

    def display224 
        puts "===Danh sach thi sinh==="    
        $tuyensinhs224.each do |thisinh224|
            puts thisinh224.display224
        end
    end
end
$start224 = true
while $start224
    quanly = TuyenSinh.new
    puts "1. Them moi thi sinh."
    puts "2. Hien thi thong tin thi sinh."
    puts "3. Tim kiem thi sinh ."
    puts "4. Thoat khoi chuong trinh."
    print "Moi ban chon chuc nang : "
    choose224 = gets.to_i

    case choose224
    when 1
        quanly.addThiSinh224
    when 2
        quanly.display224
    when 3
        quanly.searchThiSinh224
    else
       puts "Xin tạm biệt!"
        $start224 = false
    end
end
