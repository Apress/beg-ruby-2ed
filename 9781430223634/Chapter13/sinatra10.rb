require 'rubygems'
require 'sinatra'

get '/' do
  erb :index, :layout => :anotherlayout
end

post '/secretdata' do
  erb :secretdata
end

__END__
@@ layout
  <html><head><title>My App</title></head>
  <body><%= yield %></body></html>

@@ index
  <form method="POST" action="/secretdata">
  Password: <input type="text" name="password" />
  <input type="submit" value="Log in" />
  </form>

@@ secretdata
  Here's our secret data: <code>30'N 12'W</code>
