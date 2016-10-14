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
  erb %{
    <% @people.each do |person| %>
      <p><%= person[:name] %> is <%= person[:age] %> years old</p>
    <% end %>
  }
end

