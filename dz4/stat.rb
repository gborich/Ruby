words = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}
##### part A #####
puts 'В словаре ' + words.uniq.count.to_s + ' уникальных слов. '
##### part B #####
alphabet = ('a'..'z').to_a
sort_hash = {}
alphabet.each {|letter| sort_hash[letter] = words.select{|word| word.start_with?(letter)}.count}
puts 'Количество букв, на которые начинаются слова: '
puts sort_hash.sort {|x, y| y[1] <=> x[1]}
##### part C #####
n = 0
arr = []
a = 0
while a <= 25
    arr[a] = 
    a += 1
end
words.each {
    |word|
    alphabet.each {
        |letter|
        arr[n] += word.count(letter)
        n += 1
    }
    n = 0
}
hash = {}
m = 0
while m <= 25
    hash[arr[m]] = alphabet[m]
    m += 1
end
puts 'Отсортированное количество каждой буквы во всем словаре: '
puts hash.sort {|x, y| y[0] <=> x[0]}
##### part D #####
puts "График с масштабом 1 : 1760"
hash = hash.invert
m = 1
hash.keys.each {|q| print q + ' '}
print "\n"
while m <= hash.values.max/1760
    hash.keys.each do |a| 
        if hash[a]/880 < m
            print '  '
        else
            print '| '
        end
    end
    m += 1
    print "\n"
end


