class Piece
  attr_reader color
  
  def initialize
    @color = false
    @available_moves = []
  end
end