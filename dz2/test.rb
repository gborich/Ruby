word = 'wqertyeees'
letters = 'wesq'
m = 0
while(m < letters.size)
    #result = word
    i = 4
    while(i<10)
        i+=1
        puts i
    end
    word = word.delete(letters[m])
    puts word
    m+=1
end