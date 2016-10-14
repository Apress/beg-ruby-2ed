require 'rubygems'
require 'sinatra'

get '/add/:a/:b' do |a, b|
  (a.to_i + b.to_i).to_s
end
