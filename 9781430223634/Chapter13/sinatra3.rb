require 'rubygems'
require 'sinatra'

get '/add/:a/:b' do
  (params[:a].to_i + params[:b].to_i).to_s
end
