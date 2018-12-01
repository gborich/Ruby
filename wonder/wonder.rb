words = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}

require "google/cloud/translate"

# Your Google Cloud Platform project ID
project_id = "translation-01-220716"
key_file = "My_Project-cf8c099f9b91.json"

# Instantiates a client
translate = Google::Cloud::Translate.new project: project_id, keyfile: key_file

# The text to translate
text = words[rand(words.length)].downcase
# The target language
target = "ru"

# Translates some text into Russian
translation = translate.translate text, to: target

puts "Text: #{text}"
puts "Translation: #{translation}"

life = 3
stars = ('*' * text.size).split('')
puts stars.join

while life != 0
print'Введите букву: '
letter = gets.chomp
  if text.include?(letter)
    puts 'Есть такая буква'
    for n in (0..text.size) do
      if text[n] == letter
        stars[n] = letter
      end
    end
    puts stars.join
  else
    if life != 1
      print 'Такой буквы нет, '
      life -= 1
      puts 'осталось ' + life.to_s + ' жизни.'
    else
      abort 'Игра закончена'
    end
  end
  if !stars.include?('*')
    abort 'Вы выиграли!'
  end
end