require 'net/http'

def get_web_document(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)

  case response
    when Net::HTTPSuccess
      return response.body
    when Net::HTTPRedirection
      return get_web_document(response['Location'])
    else
      return nil
  end
end

puts get_web_document('http://www.rubyinside.com/test.txt')
puts get_web_document('http://www.rubyinside.com/non-existent')
puts get_web_document('http://www.rubyinside.com/redirect-test')

