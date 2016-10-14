require 'webrick'
require 'bot'

# Class that responds to HTTP/Web requests and interacts with the bot
class BotServlet < WEBrick::HTTPServlet::AbstractServlet
  
  # A basic HTML template consisting of a basic page with a form 
  # and text entry box for the user to converse with our bot. It uses
  # some placeholder text (%RESPONSE%) so the bot's responses can be
  # substituted in easily later.
  @@html = %q{
  <html><body>
    <form method="get">
      <h1>Talk To A Bot</h1>
      %RESPONSE%
      <p>
        <b>You say:</b> <input type="text" name="line" size="40" />
        <input type="submit" />
      </p>
    </form>
  </body></html>
  }
  
  def do_GET(request, response)
    # Mark the request as successful and set MIME type to support HTML
    response.status = 200
    response.content_type = "text/html"
    
    # If the user supplies some text, respond to it
    if request.query['line'] && request.query['line'].length > 1
      bot_text = $bot.response_to(request.query['line'].chomp)
    else
      bot_text = $bot.greeting
    end
    
    # Format the text and substitute into the HTML template
    bot_text = %Q{<p><b>I say:</b> #{bot_text}</p>}
    response.body = @@html.sub(/\%RESPONSE\%/, bot_text)
  end
end

# Create an HTTP server on port 1234 of the local machine
# accessible via http://localhost:1234/ or http://127.0.0.1:1234/
server = WEBrick::HTTPServer.new( :Port => 1234 )
$bot = Bot.new(:name => "Fred", :data_file => "fred.bot")
server.mount "/", BotServlet
trap("INT"){ server.shutdown }
server.start
