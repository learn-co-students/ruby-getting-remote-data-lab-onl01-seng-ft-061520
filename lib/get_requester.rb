require 'net/http'
require 'open-uri'
require 'json'

# Write your code here
class GetRequester
  def initialize(string)
    @string = string
  end
  
  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    parser = JSON.parse(self.get_response_body)
  end
  
  
  
end