require 'rubygems'
require 'mongrel'

class BasicServer < Mongrel::HttpHandler
  def process(request, response)
    response.start(200) do |headers, output|
      headers["Content-Type"] = 'text/html'
      output.write('<html><body><h1>Hello!</h1></body></html>')
    end
  end
end

s = Mongrel::HttpServer.new("0.0.0.0", "1234")
s.register("/", BasicServer.new)
s.run.join

