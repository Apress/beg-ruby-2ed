require 'drb'

remote_object = DRbObject.new nil, 'druby://:51755'
puts remote_object.some_method

