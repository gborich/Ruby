words = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}
require 'httparty'
require "google/cloud/translate"

site = 'http://rubyboosters.herokuapp.com/halloffame'

name = 'Mr. Putin'
score = 0
#hash-parameters for post request
post_options = {
    body:
        {
            password: '7wxrY3QcWJ+7',
            user: name,
            score: score
        }
}

#hash-parameters for get request
get_options = {
    body:
        {
            password: '7wxrY3QcWJ+7',
            user: name
        }
}



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


life = 3
stars = ('*' * text.size).split('')

print 'Введите ваше имя: '
name = gets.chomp

puts "Правила игры\nЗа угаданное слово сразу вам дается 100 очков, но если вы ошибетесь, то вы проиграли.
Если вы угадываете по буквам, то за каждую верно угаданную букву вы получаете по 5 очков, и у вас есть право на 3 ошибки."

print "Посмотреть таблицу лидеров? '1' - да, '0' - нет."
ans = gets.to_i
a = 0
response = HTTParty.get(site, get_options)
arr = response.to_a
if ans == 1
  while a < arr.size
    puts "User: #{arr[a]['user']} | Score: #{arr[a]['score']}"
    a += 1
  end
end
puts "Text: #{text}"
puts "Загаданное слово: #{translation}"
print "#{name}, Вы можете попробовать угадать слово сразу(для этого введите '1'), либо можете угадывать по буквам(для этого введите '2') "
a = gets.to_i

#puts "Text: #{text}"
#puts "Translation: #{translation}"
puts stars.join

if a == 1
  print 'Введите слово: '
  word = gets.chomp
  if word == text
    score += 100
    response = HTTParty.post(site, post_options = {
        body:
            {
                password: '7wxrY3QcWJ+7',
                user: name,
                score: score
            }
    })
    puts "У вас #{score} очков"
    abort 'Вы выиграли!'
  else
    abort 'Вы проиграли!'
  end
else
  while life != 0
  print'Введите букву: '
  letter = gets.chomp
    if text.include?(letter)
      score += 5
      puts "У вас #{score} очков"
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
      response = HTTParty.post(site, post_options = {
          body:
              {
                  password: '7wxrY3QcWJ+7',
                  user: name,
                  score: score
              }
      })
      puts "У вас #{score} очков"
      abort 'Вы выиграли!'
    end
  end
end