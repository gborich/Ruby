words = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}
print 'введите не меньше 3х различных букв: '
letters = gets.chomp
print 'введите количество букв в слове: '
letters_count = gets.to_i
i = 0
result_array = %w()
while(i < words.count - 1)
    m = 0
    result = words[i]
    while(m < letters.size)
        if(words[i][letters[m]] == nil)
            result = '1'
        end
        result = result.delete(letters[m])
        m+=1
    end
    if(result.size == 0 and words[i].size < letters_count)
        result_array.push(words[i])
    end
    i+=1
end
if result_array.size == 0
    puts 'нет такого слова'
else
    puts result_array.max
end