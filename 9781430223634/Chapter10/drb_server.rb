require 'drb'

class OurClass
  def some_method
    "Some test text"
  end
end

DRb.start_service nil, OurClass.new
puts "DRb server running at #{DRb.uri}"
trap("INT") { DRb.stop_service }
DRb.thread.join

