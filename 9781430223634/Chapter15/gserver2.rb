require 'gserver'

class HelloServer < GServer
  def serve(io)
    io.puts("Say something to me:")
    line = io.gets
    io.puts("You said '#{line.chomp}'")
  end
end

server = HelloServer.new(1234, '127.0.0.1', 1)
server.start
server.join

