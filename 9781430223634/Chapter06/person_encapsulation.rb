class Person
  def initialize(name)
    set_name(name)
  end

  def name
    @first_name + ' ' + @last_name
  end


  def set_name(name)
    first_name, last_name = name.split(/\s+/)
    set_first_name(first_name)
    set_last_name(last_name)
  end

  def set_first_name(name)
    @first_name = name
  end

  def set_last_name(name)
    @last_name = name
  end
  
  private :set_name, :set_first_name, :set_last_name
  
end


a = Person.new("Dave Thomas")
puts a.name
a.set_name("Fred Bloggs")
puts a.name
a.set_first_name("John")
puts a.name
a.set_last_name("Smith")
puts a.name