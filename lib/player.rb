class Player
  attr_reader :token
  def initialize(token) 
    @token = token
end

def move
puts "Please enter your selection"
get.strip
end

 