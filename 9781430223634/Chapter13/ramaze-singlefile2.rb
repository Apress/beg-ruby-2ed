require 'rubygems'
require 'ramaze'

class MainController < Ramaze::Controller
  def index
    "Hello everybody!"
  end
end

class SecretController < Ramaze::Controller
  map '/secretplace'

  def index
    "This place is secret!"
  end

  def hello
    "Hello secret person!"
  end
end

Ramaze.start
