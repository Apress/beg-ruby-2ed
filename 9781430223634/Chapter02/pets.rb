class Pet
  attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

class Dog < Pet
end

class Snake < Pet
  attr_accessor :length
end

class Dog < Pet
  def bark
    puts "Woof!"
  end
end

a_dog = Dog.new
a_dog.bark

