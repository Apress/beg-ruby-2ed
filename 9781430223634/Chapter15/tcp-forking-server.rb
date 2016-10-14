require 'socket'

server = TCPServer.new(1234)

5.times do
  fork do
    while connection = server.accept
      while line = connection.gets
        break if line =~ /quit/
        puts line
        connection.puts "Received!"
      end

      connection.puts "Closing the connection. Bye!"
      connection.close
    end      
  end
end

