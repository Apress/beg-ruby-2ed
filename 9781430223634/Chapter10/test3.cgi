#!/usr/bin/ruby

require 'cgi'
cgi = CGI.new

from = cgi['from'].to_i
to = cgi['to'].to_i

number = rand(to-from+1) + from

puts cgi.header
puts "<html><body>#{number}</body></html>"

