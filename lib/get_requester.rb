
require 'open-uri'
require 'net/http'
require 'json'

class GetRequester  #this is a class that can be initiated by passing in a URL

    URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def initialize(url)
        @url = url 
    end 

    def get_response_body #this is an instance method on the GetRequester class. 
        #This sends a GET request to the URL provided on initialization, returning the body of the request 
            uri = URI.parse(@url)
            response = Net::HTTP.get_response(uri)
            response.body
    end 
def parse_json # is an instance methof on the GetRequester class 
    #converts JSON returned from 'get_response_body' into Ruby data structures 

    JSON.parse(get_response_body)

end 

end 