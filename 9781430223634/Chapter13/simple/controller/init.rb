# Define a subclass of Ramaze::Controller holding your defaults for all
# controllers

require 'erubis'

class Controller < Ramaze::Controller
  layout '/page'
  helper :xhtml
  engine :Erubis
end

# Here go your requires for subclasses of Controller:
require 'controller/main'
require 'controller/example'
require 'controller/people'