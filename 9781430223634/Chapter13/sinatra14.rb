require 'rubygems'
require 'sinatra'

error do
  redirect 'http://en.wikipedia.org/wiki/Division_by_zero'
end

get '/divide/:a/:b' do |a, b|
  "#{a.to_i / b.to_i}"
end
