class Nguoi
    attr_accessor :hoten224, :tuoi224, :nghenghiep224, :cmnd224
    def initialize (hoten224,tuoi224,nghenghiep224,cmnd224)
        @hoten224 = hoten224
        @tuoi224 = tuoi224
        @nghenghiep224 = nghenghiep224
        @cmnd224 = cmnd224
    end

    def display224
        puts "Ho ten: #{@hoten224} - Tuoi : #{@tuoi224} - Nghe nghiep: #{@nghenghiep224} - CMND: #{@cmnd224}"
    end
end
class HoGiaDinh 
    attr_accessor :sonha224, :sotv224

    def initialize (sonha224,sotv224)
        @sonha224 = sonha224
        @sotv224 = sotv224
    end
end
class KhuPho
    def initialize
        
    end

    def addHouser(hogiadinhs224, hogiadinh224)
        hogiadinhs224.push(hogiadinh224)
    end

    def addMember(thanhviens224, thanhvien224)
        thanhviens224.push(thanhvien224)
    end

    def showListMember(hogiadinhs224, thanhviens224)
      puts("** Danh sach ho gia dinh **")
        for i in 0..(hogiadinhs224.length()-1) do
            for j in 0..(thanhviens224.length()-1) do
                puts("================================")
                puts("--- STT #{i+1}: ")
                puts("--- Số nhà: #{hogiadinhs224[i].sonha224}")
                
                puts("--- Thành viên thứ #{j+1}: ")
                puts("--- Họ và tên: #{thanhviens224[j].hoten224}")
                puts("--- Tuổi: #{thanhviens224[j].tuoi224}")
                puts("--- Nghề nghiệp: #{thanhviens224[j].nghenghiep224}")
                puts("--- CMND: #{thanhviens224[j].cmnd224}")
                end           
        end
    end
end
khupho224 = KhuPho.new
thanhviens224 = []
hogiadinhs224 = []

puts("Nhập số hộ dân: ")
sohodan224 = gets.to_i

for i in 0..(sohodan224-1) do
    puts("Nhập thông tin hộ dân số #{i + 1} --")
    print("Nhập số nhà: ")
    sonha224 = gets.to_s
    print("Nhập số thành viên trong gia đình: ")
    sotv224 = gets.to_i
    for a224 in 0..(sotv224-1) do
        puts("Nhập thông tin cá nhân thành viên #{a224 + 1} --")
        print("Nhập họ và tên: ")
        hoten224 = gets.to_s
        print("Nhập tuổi: ")
        tuoi224 = gets.to_i
        print("Nhập nghề nghiệp: ")
        nghenghiep224 = gets.to_s
        print("Nhập CMND: ")
        cmnd224 = gets.to_s
        thanhvien224 = Nguoi.new(hoten224, tuoi224, nghenghiep224, cmnd224)
        khupho224.addMember(thanhviens224, thanhvien224)
    end
    hogiadinh224 = HoGiaDinh.new(sonha224, thanhviens224)
    khupho224.addHouser(hogiadinhs224, hogiadinh224)
end
khupho224.showListMember(hogiadinhs224, thanhviens224)