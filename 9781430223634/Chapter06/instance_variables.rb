class Person
  attr_accessor :name, :age
end

p = Person.new
p.name = "Fred"
p.age = 20
p p.instance_variables
