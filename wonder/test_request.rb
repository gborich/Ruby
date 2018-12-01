
# you need to install gem 'httparty' before. Enter 'gem install httparty' in Linux console for installation
require 'httparty' #library which makes creating request easier
site = 'http://rubyboosters.herokuapp.com/halloffame'
#hash-parameters for post request
post_options = {
    body:
        {
            password: 'your_original_cloud9_password',
            user: 'Vasiliy Sikorskiy',
            score: 25
        }
}

#hash-parameters for get request
get_options = {
    body:
        {
            password: '7wxrY3QcWJ+7',
            user: 'Vasiliy Sikorskiy'
        }
}
#this string sends user name and score to database and stores response in variable
#response = HTTParty.post(site, post_options)
#puts JSON.parse(response.body)
#you can change some values:
post_options[:body][:score] = 2
#one more data sending
#response = HTTParty.post(site, post_options)
#puts JSON.parse(response.body)
#here we get current Hall of fame for some user
response = HTTParty.get(site, get_options)
p response.headers
arr = response.to_a
puts arr[0]
puts "User: #{arr[0]['user']}\nScore: #{arr[0]['score']}"