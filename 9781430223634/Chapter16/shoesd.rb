Shoes.setup do
  #gem 'json'
end

require 'json'
require 'open-uri'

Shoes.app do
  url = 'http://twitter.com/statuses/public_timeline.json'
  entries = JSON.load(open(url).read)
  stack :width => 1.0 do
    entries.each do |entry|
    para entry["text"], :border => 5
    end
  end
end