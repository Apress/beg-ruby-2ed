class PeopleController < Controller
  def index
    @people = Person.all
  end
  
  def find
    @person = Person.find_by_name(request[:name])
  end
end