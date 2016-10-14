require 'rubygems'
require 'sinatra'

before do
  @people = [
             { :name => "Beatrice", :age => 20 },
             { :name => "Eugenie", :age => 18 },
             { :name => "Louise", :age => 6 }
           ]
end

get '/' do
  erb :index
end

__END__
@@ layout
  <html>
    <head><title>My App</title></head>
  <body>
    <h1>My App</h1>
    <%= yield %>
  </body>
  </html>

@@ index
  <% @people.each do |person| %>
    <p><%= person[:name] %> is <%= person[:age] %> years old</p>
  <% end %>
