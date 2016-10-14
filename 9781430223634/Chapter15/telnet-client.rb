require 'net/telnet'

server = Net::Telnet::new('Host' => '127.0.0.1',
                          'Port' => 1234,
                          'Telnetmode' => false)

lines_to_send = ['Hello!', 'This is a test', 'quit']

lines_to_send.each do |line|
  server.puts(line)

  server.waitfor(/./) do |data|
    puts data
  end
end

