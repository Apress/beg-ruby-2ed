require 'rubygems'
require 'ramaze'

class MainController < Ramaze::Controller
  def index
    "Hello everybody!"
  end

  def secret
    "You've found the secret URL.."
  end
end

Ramaze.start
