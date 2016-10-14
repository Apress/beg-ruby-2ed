require 'rubygems'
require 'markaby'

m = Markaby::Builder.new

items = ['Bread', 'Butter', 'Tea', 'Coffee']

m.html do
  body do
    h1 'My Shopping List'
    ol do
      items.each do |item|
        li item
      end
    end
  end
end

puts m

