class Player

    attr_accessor :name
    attr_accessor :lastname
    attr_accessor :age
    attr_accessor :password
    attr_accessor :login
    attr_accessor :id


    def greeting
        puts "Hello! My name is " + @name + ". My lastname is " + @lastname + ". I am " + @age.to_s + "."
    end

    def registration
        print 'Enter your Name: '
        @name = gets.chomp
        print 'Enter your Lastname: '
        @lastname = gets.chomp
        print 'Enter your Age: '
        @age = gets.chomp
        print 'Enter your Login: '
        @login = gets.chomp
        print 'Enter your Password: '
        @password = gets.chomp
        post_registration = {
            body:
                {
                    password: @password,
                    login: @login,
                    name: @name,
                    lastname: @lastname,
                    age: @age,
                    id: @id
                    type: "registration"
                }
        }
        #Проверить есть ли такое имя и если нет, то зарегистрировать, если да - попытатьсяя заново
        # присвоить уникальный id
    end

    def login
        print 'Enter your Login: '
        @login = gets.chomp
        print 'Enter your Password: '
        @password = gets.chomp
        # проверить совпадает ли логин и пароль
    end

    def ready?(status)
        @status = true
        print "Are you ready? If yes - enter 'y', if no - enter 'n'."
        answer = gets.chomp
        if answer == 'y'
            @status = true
            puts 'I am ready'
        elsif answer == 'n'
            @status = false
            puts 'I am not ready'
        else
            puts 'You entered an incorrect answer.'
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