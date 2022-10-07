class ThongTin224
    attr_accessor :idxe224, :hangsx224, :namsx224, :dongxe224, :giaban224, :bienso224, :mauxe224
    def initialize (idxe224,hangsx224,namsx224,dongxe224,giaban224,bienso224,mauxe224)
        @idxe224 = idxe224
        @hangsx224 = hangsx224
        @namsx224 = namsx224
        @dongxe224 = dongxe224
        @giaban224 = giaban224
        @bienso224 = bienso224
        @mauxe224 = mauxe224
    end

    def initialize ()
    
    end

    def input224 
        puts "Nhap ID: "
        @idxe224 = gets.chomp
        puts "Nhap hang san xuat: "
        @hangsx224 = gets.chomp
        puts "Nhap nam san xuat: "
        @namsx224 = gets.chomp
        puts "Nhap dong xe: "
        @dongxe224 = gets.chomp
        puts "Nhap gia ban: "
        @giaban224 = gets.chomp
        puts "Nhap bien so: "
        @bienso224 = gets.chomp
        puts "Nhap mau xe: "
        @mauxe224 = gets.chomp
    end

    def display224
        puts "ID: #{@idxe224} - Hang san xuat : #{@hangsx224} - Nam san xuat #{@namsx224} - Dong xe: #{@dongxe224} - Gia ban : #{@giaban224} - Bien so #{@bienso224} - Mau xe #{@mauxe224}"
    end
end
class Oto224 < ThongTin224
    attr_accessor :sochongoi224, :kieudongco224, :nhienlieu224, :sotuikhi224, :ngaydangkiem224
    def initialize (idxe224,hangsx224,namsx224,dongxe224,giaban224,bienso224,mauxe224,sochongoi224,kieudongco224,nhienlieu224,sotuikhi224,ngaydangkiem224)
        @sochongoi224 = sochongoi224
        @kieudongco224 =kieudongco224
        @nhienlieu224 = nhienlieu224
        @sotuikhi224 = sotuikhi224
        @ngaydangkiem224 = ngaydangkiem224
        super(idxe224,hangsx224,namsx224,dongxe224,giaban224,bienso224,mauxe224)
    end
    def initialize ()
        
    end

    def input224
        super
        puts "Nhap so cho ngoi: "
        @sochongoi224 = gets.chomp
        puts "Nhap kieu dong co: "
        @kieudongco224 = gets.chomp
        puts "Nhap nhien lieu: "
        @nhienlieu224 = gets.chomp
        puts "Nhap so tui khi: "
        @sotuikhi224 = gets.chomp
        puts "Nhap ngay dang kiem: "
        @ngaydangkiem224 = gets.chomp
    end

    def display224
        super
        puts "So cho ngoi: #{@sochongoi224} - Kieu dong co : #{@kieudongco224} - Nhien lieu #{@nhienlieu224} - Tui khi: #{@tuikhi224} - Ngay dang kiem : #{@ngaydangkiem224}"
    end
end
class XeMay224 < ThongTin224
    attr_accessor :congxuat224, :dungtinhbx224
    def initialize (idxe224,hangsx224,namsx224,dongxe224,giaban224,bienso224,mauxe224,congxuat224,dungtinhbx224)
        @congxuat224 = congxuat224
        @dungtinhbx224 =dungtinhbx224
        super(idxe224,hangsx224,namsx224,dongxe224,giaban224,bienso224,mauxe224)
    end
    def initialize ()
        
    end

    def input224
        super
        puts "Nhap cong xuat: "
        @congxuat224 = gets.chomp
        puts "Nhap dung tich binh xang: "
        @dungtinhbx224 = gets.chomp
    end

    def display224
        super
        puts "Cong xuat: #{@congxuat224} - Dung tich binh xang : #{@dungtinhbx224}"
    end
end
class XeTai224 < ThongTin224
    attr_accessor :trongtai224
    def initialize (idxe224,hangsx224,namsx224,dongxe224,giaban224,bienso224,mauxe224,trongtai224)
        @trongtai224 = trongtai224
        super(idxe224,hangsx224,namsx224,dongxe224,giaban224,bienso224,mauxe224)
    end
    def initialize ()
        
    end

    def input224
        super
        puts "Nhap trong tai: "
        @trongtai224 = gets.chomp
    end

    def display224
        super
        puts "Trong tai: #{@trongtai224}"
    end
end
class QLPTGT224
    def initialize
    end

    $phuongtiens224 = []
    
    def addPhuongTien224
        puts "1. Them o to"
        puts "2. Them xe may"
        puts "3. Them xe tai"
        puts "Moi ban chon chuc nang: "
        choose224 = gets.to_i
        if choose224 == 1 
            phuongtien224 =Oto224.new
        elsif choose224 == 2
            phuongtien224 =XeMay224.new
        else 
            phuongtien224 = XeTai224.new
        end
        phuongtien224.input224
        $phuongtiens224 << phuongtien224       
    end

    def deletePhuongTien224
        puts "Nhap ID phuong tien can xoa: "
        maID224 = gets.chomp
        $phuongtiens224.delete_if {|pt224| pt224.idxe224 == maID224}
        puts "===Danh sach phuong tien sau khi xoa==="    
        $phuongtiens224.each do |pt224|
            puts pt224.display224
        end
    end

    def searchPhuongTien224
        puts "Nhap loai hinh thuc tim kiem:"
        puts "1. Hang san xuat"
        puts "2. Mau"
        puts "3. Bien so"
        choose224 =gets.to_i
        case choose224
            when 1
                puts "Nhap ten hang san xuat can tim kiem"
                tenhsxtk224 = gets.chomp
                $phuongtiens224.each do |xe224|
                    if xe224.hangsx224.include? tenhsxtk224
                      xe224.display224   
                    else
                        puts "Khong tin thay"             
                    end
                end
            when 2
                puts "Nhap mau can tim kiem"
                mautk224 = gets.chomp
                $phuongtiens224.each do |xe224|
                    if xe224.mauxe224.include? mautk224
                      xe224.display224   
                    else
                        puts "Khong tin thay"             
                    end
                end
            when 3
                puts "Nhap bien so can tim kiem"
                bienso224 = gets.chomp
                $phuongtiens224.each do |xe224|
                    if xe224.bienso224.include? bienso224
                      xe224.display224   
                    else
                        puts "Khong tin thay"             
                    end
                end
        end
    end

    def display224 
        puts "===Danh sach phuong tien giao thong==="    
        $phuongtiens224.each do |phuongtien224|
            puts phuongtien224.display224
        end
    end
end
$start224 = true
while $start224

    quanly = QLPTGT224.new
    puts "1. Them moi phuong tien giao thong."
    puts "2. Xoa phuong tien."
    puts "3. Tim kiem phuong tien ."
    puts "4. Thoat khoi chuong trinh."

    print "Moi ban chon chuc nang : "
    choose224 = gets.to_i

    case choose224
    when 1
        quanly.addPhuongTien224
        quanly.display224
    when 2
        quanly.deletePhuongTien224
    when 3
        quanly.searchPhuongTien224
    else
       puts "Xin tạm biệt!"
        $start224 = false
    end
end