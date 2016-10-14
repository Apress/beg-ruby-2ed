require 'open-uri'

f = open('http://www.rubyinside.com/test.txt')
puts f.readlines.join

