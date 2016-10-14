#!/usr/bin/ruby

require 'cgi'
cgi = CGI.new

text = cgi['text']

puts cgi.header
puts "<html><body>#{text.reverse}</body></html>"

