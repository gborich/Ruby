class Piece

    def initialize(name, color, coordinate)
        @name = name
        @color = color
        @coordinate = coordinate
    end

    def move
        puts "I move like a " + @nominal
    end

    def where_is?
        puts "I am on " @coordinate
    end

    def info
        puts " "
    end
end
horse = Piece.new('Horse', 'black', 'b6')
horse.move
horse.where_is?