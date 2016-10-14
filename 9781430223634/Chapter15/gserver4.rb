require 'gserver'

class HelloServer < GServer
  def serve(io)
    io.puts("To stop this server, type 'shutdown'")
    self.stop if io.gets =~ /shutdown/
  end
end

server = HelloServer.new(1234)
server.start

loop do
  break if server.stopped?
end

puts "Server has been terminated"

