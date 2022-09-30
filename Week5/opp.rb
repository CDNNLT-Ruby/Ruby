class CanBo
    attr_accessor :name, :age, :gender, :address
    def initialize (name,age,gender,address)
        @name = name
        @age = age
        @gender = gender
        @address = address
    end
    
    def initialize ()
        
    end
    
    def input 
        puts "Input name: "
        @name = gets.chomp
        puts "Inout age: "
        @age = gets.chomp
        puts "Input gender: "
        @gender = gets.chomp
        puts "Input address: "
        @address = gets.chomp
    end

    def display
        puts "Name : #{@name} - Age : #{@age} - Gender #{@gender} - Address #{@address}"
    end
end
class CongNhan < CanBo
    attr_accessor :level
    def initialize (name,age,gender,address,level)
        @level = level
        super(name,age,gender,address)
    end
    
    def initialize ()
        
    end
    def input 
        super
        puts "Input level: "
        level = gets.chomp
    end
    def display
        super
        puts "- Level : #{@level}"
    end
end
class KySu
    attr_accessor :training
    def initialize (name,age,gender,address,training)
        @training = training
        super(name,age,gender,address)
    end
    
    def initialize ()
        
    end
    def input 
        super
        puts "Input training: "
        training = gets.chomp
    end
    def display
        super
        puts "- Training : #{@training}"
    end
end
class NhanVien
    attr_accessor :work
    def initialize (name,age,gender,address,work)
        @work = work
        super(name,age,gender,address)
    end
    def initialize ()

    end
    def input 
        super
        puts "Input work: "
        work = gets.chomp
    end
    def display
        super
        puts "- Work : #{@work}"
    end
end
class QLCB
    $canbos = []
    def add
            puts "===Chon vi tri muon them==="
            puts "1.Nhan vien"
            puts "2.Ki Su"
            puts "3.Cong nhan"
            puts "4.Thoat"
            number = gets.to_i
            if number ==1 
                canbo =CongNhan.new
             
            elsif choose == 2
                canbo =KySu.new
            else 
                canbo = NhanVien.new
            end
            canbo.input
            $canbos << canbo  
    end

    def infomatinon 
        puts "===List can bo==="    
        $canbos.each do |canbo|
            puts canbo.display
        end
    end

    def menu
        $tt = true
        while $tt
            puts "1. Nhap thong tin moi cho can bo"
            puts "2. Tim kiem theo ho va ten"
            puts "3. Hien thi thong tin cua toan can bo"
            puts "4.Thoat"
            numbermn = gets.to_i
            case numbermn
            when 1
                qlcb = QLCB.new
                qlcb.add
            when 2
            when 3
                qlcb = QLCB.new
                qlcb.infomatinon
            when 4
            else
            end
        end
    end
end
qlcb = QLCB.new
qlcb.menu
