require 'open-uri'

f = open('http://www.rubyinside.com/test.txt',
         {'User-Agent' => 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)'})

puts f.read

