class Board
attr_accessor :cells


def initialize
  reset!
end

def reset!
  @cells = Array.new(9, " ")
end

def display
  puts " #{cells[0] | #{cells[1]} | #{cells[2]}"
  puts "_________"
   puts " #{cells[3] | #{cells[4]} | #{cells[5]}"
   puts "_________"
   puts " #{cells[6] | #{cells[7]} | #{cells[8]}"
end

def position(input)
cells[input.to_i-1]
end

def turn_count
cells.count{|char| char=="X" || char=="O"}
end


def taken?(input)
position(input)=="X" || position(input)=="O"
end

def valid_move?(input)
input.to_i.between?(1,9) && !taken?(input) 
end
end

def update(input, player)
cells[input.to_i-1] = player.token
end

def full?
cells.all? do |character| 
if character == "X" || character == "O"}
true
else
false
end
end
end
