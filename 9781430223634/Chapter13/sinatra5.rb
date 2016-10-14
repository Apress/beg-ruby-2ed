require 'rubygems'
require 'sinatra'

get '/' do
  %q{<form method="post">
       Enter your name: <input type="text" name="name" />
       <input type="submit" value="Go!" />
     </form>}
end

post '/' do
  "Hello #{params[:name]}!"
end

