require 'rubygems'
require 'sinatra'

get '/' do
  "Hello, world!"
end

get '/bye' do
  "Leaving already?"
end

get '/time' do
  Time.now.to_s
end
