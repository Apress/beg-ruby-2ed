require 'open-uri'

output = File.new('1.8.2-patch1.gz', 'wb')
open('ftp://ftp.ruby-lang.org/pub/ruby/1.8/1.8.2-patch1.gz') do |f|    
  output.print f.read
end
output.close

