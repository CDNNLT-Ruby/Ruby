class TaiLieu
    attr_accessor :matl224, :tennxs224, :sobph224
    def initialize (matl224,tennxs224,sobph224)
        @matl224 = matl224
        @tennxs224 = tennxs224
        @sobph224 = sobph224
    end

    def initialize ()
    
    end

    def input224 
        puts "Nhap ma tai lieu: "
        @matl224 = gets.chomp
        puts "Nhap ten nha san xuat: "
        @tennxs224 = gets.chomp
        puts "Nhap so ban phat hanh: "
        @sobph224 = gets.chomp
    end

    def display224
        puts "Ma tai lieu: #{@matl224} - Ten nha san xuat : #{@tennxs224} - So ban phat hanh #{@sobph224}"
    end
end

class Sach < TaiLieu
    attr_accessor :tentg224, :sotrang224
    def initialize (matl224,tennxs224,sobph224,tentg224,sotrang224)
        @tentg224 = tentg224
        @sotrang224 = sotrang224
        super(matl224,tennxs224,sobph224)
    end
    
    def initialize ()
        
    end

    def input224
        super
        puts "Nhap ten tac gia: "
        @tentg224 = gets.chomp
        puts "Nhap so trang: "
        @sotrang224 = gets.chomp
    end

    def display224
        super
        puts "Ten tac gia: #{@tentg224} - So trang : #{@sotrang224}"
    end
end

class TapChi < TaiLieu
    attr_accessor :soph224, :thangph224
    def initialize (matl224,tennxs224,sobph224,soph224,thangph224)
        @soph224 = soph224
        @thangph224 = thangph224
        super(matl224,tennxs224,sobph224)
    end
    
    def initialize ()
        
    end

    def input224 
        super
        puts "Nhap so phat hanh: "
        @soph224 = gets.chomp
        puts "Nhap thang phat hanh: "
        @thangph224 = gets.chomp
    end

    def display224
        super
        puts "So phat hanh: #{@soph224} - Thang phat hanh : #{@thangph224}"
    end
end

class Bao < TaiLieu
    attr_accessor :ngayph224
    def initialize (matl224,tennxs224,sobph224,ngayph224)
        @ngayph224 = ngayph224
        super(matl224,tennxs224,sobph224)
    end
    
    def initialize ()
        
    end

    def input224 
        super
        puts "Nhap ngay phat hanh: "
        @ngayph224 = gets.chomp
    end

    def display224
        super
        puts "Ngay phat hanh: #{@ngayph224}"
    end
end

class QuanLySach
    def initialize
    end

    $tailieus224 = []
    
    def addTaiLieu
        puts "1. Them sach"
        puts "2. Them tap chi"
        puts "3. Them bao"
        puts "Moi ban chon chuc nang: "
        choose224 = gets.to_i
        if choose224 == 1 
            tailieu224 =Sach.new
        elsif choose224 == 2
            tailieu224 =TapChi.new
        else 
            tailieu224 = Bao.new
        end
        tailieu224.input224
        $tailieus224 << tailieu224       
    end

    def deleteTaiLieu
        puts "Nhap ma tai lieu can xoa: "
        matldl224 = gets.chomp
        $tailieus224.delete_if {|tl224| tl224.matl224 == matldl224}
        puts "===Danh sach tai lieu sau khi xoa==="    
        $tailieus224.each do |tailieu224|
            puts tailieu224.display224
        end
    end

    def searchTaiLieu
        puts "Nhap loai tai lieu can tim:";
        puts "1. Sach";
        puts "2. Tap chi";
        puts "3. Bao";
        choose224 =gets.to_i;
        case choose224
            when 1
                for i in 0..($tailieus224.length() -1)
                    item_224 = $tailieus224[i];
                    if item_224.instance_of? Sach 
                        $tailieus224[i].display224();
                end
                end
            when 2
                for i in 0..($tailieus224.length() -1)
                    item_224 = $tailieus224[i];
                    if item_224.instance_of? TapChi 
                        $tailieus224[i].display224();
                end
                end
            when 3
                for i in 0..($tailieus224.length() -1)
                    item_224 = $tailieus224[i];
                    if item_224.instance_of? Bao  
                        $tailieus224[i].display224();
                end
                end
        end
    end

    def display224 
        puts "===Danh sach tai lieu==="    
        $tailieus224.each do |tailieu224|
            puts tailieu224.display224
        end
    end
end
$start224 = true
while $start224

    quanly = QuanLySach.new
    puts "1. Them moi tai lieu."
    puts "2. Xoa tai lieu."
    puts "3. Hien thi thong tin tai lieu ."
    puts "4. Tim kiem tai lieu ."
    puts "5. Thoat khoi chuong trinh."

    print "Moi ban chon chuc nang : "
    choose224 = gets.to_i

    case choose224
    when 1
        quanly.addTaiLieu
    when 2
       quanly.deleteTaiLieu
    when 3
        quanly.display224
    when 4
        quanly.searchTaiLieu
    else
       puts "Xin tạm biệt!"
        $start224 = false
    end
end