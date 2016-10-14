require 'rubygems'
require 'feedzirra'

feed = Feedzirra::Feed.fetch_and_parse('http://www.rubyinside.com/feed/')

puts "This feed's title is #{feed.title}"
puts "This feed's Web site is at #{feed.url}"

feed.entries.each do |item|
  puts item.title + "\n---\n" + item.summary + "\n\n"       
end

