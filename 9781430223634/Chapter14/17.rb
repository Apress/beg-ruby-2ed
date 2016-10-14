require 'open-uri'
puts URI.parse('http://www.rubyinside.com/test.txt').open.read

