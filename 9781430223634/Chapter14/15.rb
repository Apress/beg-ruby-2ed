require 'open-uri'

open('http://www.rubyinside.com/test.txt') do |f|    
  puts f.readlines.join
end

