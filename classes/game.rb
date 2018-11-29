class Game

    def initialize(status, number, player_1, player_2)
        @status = status
        @number = number
        @player_1 = player_1
        @player_2 = player_2
    end

    def print_status
        if @status == true
            puts 'Playing now'
        else
            puts 'The game is over'
        end
    end

    def start_game
        @status = true
        puts 'The game has begun'
    end

    def end_game
        @status = false
        puts 'The game is over'
    end

    def who_plays?
        puts @player_1 + ' and ' + @player_2
    end 

    def info
        puts " "
    end
end