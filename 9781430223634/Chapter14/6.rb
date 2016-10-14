require 'net/http'

url = URI.parse('http://www.rubyinside.com/test.cgi')

response = Net::HTTP.post_form(url,{'name' => 'David', 'age' => '24'})
puts response.body

