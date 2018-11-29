words = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}
puts 'Сыграем в игру?'
answer = gets.chomp
if answer == 'no' or answer == 'нет'
    abort 'Ну и зря'
end
puts 'Игра "Cлова", правила обычные. У Вас есть 5 жизней. Играем пока Вы не проиграете или не кончатся слова.'
print 'Поехали! Введите слово:'
life = 5
res = ' '
word = gets.chomp
if words.detect {|i| i == word } != nil
    words.each {
        |w|
        if w[0] == word[-1]
            res = w
            puts res
            words.delete(w)
            words.delete(word)
            break
        end
    }
else
    life -= 1
    puts 'Нет такого слова. У Вас осталось ' + life.to_s + ' жизни.'
end
while life != 0
    print 'Введите слово:'
    word = gets.chomp
    if words.detect {|i| i == word } != nil and res[-1] == word[0]
        words.each {
            |w|
            if w[0] == word[-1]
                res = w
                puts res
                words.delete(w)
                words.delete(word)
                break
            end
        }
    else
        if life != 1
            life -= 1
            puts 'Не правильно. У Вас осталось ' + life.to_s + ' жизни.'
        else
            abort 'Игра закончена'
        end
    end
end