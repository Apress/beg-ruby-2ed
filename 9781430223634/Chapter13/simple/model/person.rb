class Person
  attr_accessor :name, :age
  
  # Use a class variable to store a reference to all Person objects
  @@people = []
  
  # Create a new Person object
  def initialize(name, age)
    @name, @age = name, age
    @@people << self
  end
  
  # Return the Person object with the specified name
  def Person.find_by_name(name)
    @@people.find { |person| person.name == name }
  end
  
  # Return all Person objects
  def Person.all
    @@people
  end
end

# Populate with some data (since we're not attached to a database)
Person.new("Clint", 22)
Person.new("Ursula", 84)
Person.new("Neil", 38)