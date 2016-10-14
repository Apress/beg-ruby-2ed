require 'webrick'

class MyServlet < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(request, response)
    response.status = 200
    response.content_type = "text/plain"
    response.body = "Hello, world!"
  end
end

server = WEBrick::HTTPServer.new( :Port => 1234 )
server.mount "/", MyServlet
trap("INT"){ server.shutdown }
server.start

