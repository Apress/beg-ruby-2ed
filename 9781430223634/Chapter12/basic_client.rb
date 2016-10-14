require 'bot'

bot = Bot.new(:name => ARGV[0], :data_file => ARGV[1])

puts bot.greeting

while input = $stdin.gets and input.chomp != 'end'
  puts '>> ' + bot.response_to(input)
end

puts bot.farewell
