words = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}
#max_length = words[0]
#k = words.count
#i = 1
#while (i < k-1)
#    i+=1
#    if (max_length.size < words[i].size)
#        max_length = words[i]
#    end     
#end
#puts 'самое длиное слово: ' + max_length
####### part 1 ######
#max_length = words.max_by{ |elem| elem.size } 
#puts max_length + ' = ' + max_length.size.to_s
####### part 2 ######
#print 'введите число: '
#word_count = gets.to_i
##puts 'длина массива = ' + k.to_s
#n = 0
#while (n < k-1)
#    n+=1
#    if (words[n].size == word_count)
#        puts 'слово длиной ' + word_count.to_s + ' = ' + words[n].to_s
#        abort
#    end    
#end
###### part 3 ######
print 'введите не меньше 3х различных букв: '
letters = gets.chomp
print 'введите количество букв в слове: '
letters_count = gets.to_i
i = 0
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
        puts 'подходит слово: ' + words[i]
        abort
    end
    i+=1
end
puts 'нет такого слова'