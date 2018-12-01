
# you need to install gem 'httparty' before. Enter 'gem install httparty' in Linux console for installation
require 'httparty' #library which makes creating request easier
site = 'http://rubyboosters.herokuapp.com/halloffame'

name = 'Mr Putin'
score = 55

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

#this string sends user name and score to database and stores response in variable
response = HTTParty.post(site, post_options)
puts JSON.parse(response.body)
# #you can change some values:
# post_options[:body][:score] = 2
# #one more data sending
# response = HTTParty.post(site, post_options)
# puts JSON.parse(response.body)
#here we get current Hall of fame for some user
response = HTTParty.get(site, get_options)
#p response.headers
arr = response.to_a
puts arr.size
a = 0
while a < arr.size
  puts "User: #{arr[a]['user']} | Score: #{arr[a]['score']}"
  a += 1
end
#arr.each { |a| puts arr[a]}
puts "User: #{arr[0]['user']}\nScore: #{arr[0]['score']}"