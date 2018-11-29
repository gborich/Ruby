class Player

    attr_accessor :name
    attr_accessor :lastname
    attr_accessor :age

    def greeting
        puts "Hello! My name is " + @name + ". My lastname is " + @lastname + ". I am " + @age.to_s + "."
    end

    def ready?(status)
        @status = true
        if status == true
            puts 'I am ready'
        else
            puts 'I am not ready'
        end
    end

    def info
        puts " "
    end
end

a = Player.new
a.name = 'Boris'
a.lastname = 'Goncharenko'
a.age = 25
a.greeting
status = true
a.ready?(status)