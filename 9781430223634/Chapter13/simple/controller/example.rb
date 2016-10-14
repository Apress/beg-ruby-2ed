class ExampleController < Controller
  def index
    @random_number = rand(1000)
  end
  
  def secret
    "This is secret stuff!"
  end
  
  def divide
    (request[:a].to_i / request[:b].to_i).to_s
  end
  
end