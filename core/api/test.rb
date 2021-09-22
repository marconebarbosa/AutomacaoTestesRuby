require 'httparty'
def initialize 
    @response =  HTTParty.new
end

#@response = HTTParty.get('http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup')

#puts "response code:#{@response.code}"
#puts "response statuscode:#{​@response.statuscode}​"
#puts "response headers:#{@response.headers}"
#puts "response body:#{@response.body}"

@response = HTTParty.post('http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup',:body=> {"nome":"sympla", "cidade":"Belo Horizonte"})

puts "response code:#{@response.code}"
#puts "response statuscode:#{​@response.statuscode}​"
puts "response headers:#{@response.headers}"
#puts "response body:#{@response.body}"

