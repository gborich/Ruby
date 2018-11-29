words = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}
puts words[rand(words.length)].downcase