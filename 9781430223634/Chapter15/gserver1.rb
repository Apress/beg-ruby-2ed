require 'gserver'

class HelloServer < GServer
  def serve(io)
    io.puts("Hello!")
  end
end

server = HelloServer.new(1234)
server.start
server.join

