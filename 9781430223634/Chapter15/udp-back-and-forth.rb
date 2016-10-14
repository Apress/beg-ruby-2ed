require 'socket'

host = 'localhost'
port = 1234

s = UDPSocket.new
s.bind(nil, port)
s.send("1", 0, host, port)

5.times do
  text, sender = s.recvfrom(16)
  remote_host = sender[3]
  
  puts "#{remote_host} sent #{text}"
  
  response = (text.to_i * 2).to_s
  puts "We will respond with #{response}"

  s.send(response, 0, host, port)
end

