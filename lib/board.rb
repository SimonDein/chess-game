require_relative 'piece'

class Board
  SQUARES = 64
  ROWS = 8
  COLUMNS = 8
  COLUMN_NAMES = %w(a b c d e f g h)
  
  attr_accessor :squares
  
  def initialize
    @squares = []
    initialize_squares
    initialize_pieces
  end

  def initialize_squares
    ROWS.times {|_| squares << Array.new(COLUMNS)}
  end

  def display_board
    puts "  +---+---+---+---+---+---+---+---+"
    puts "8 | r | n | b | q | e | b | n | r |"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "7 | p | p | p | p | p | p | p | p |"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "6 |   |   |   |   |   |   |   |   |"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "5 |   |   |   |   |   |   |   |   |"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "4 |   |   |   |   |   |   |   |   |"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "3 |   |   |   |   |   |   |   |   |"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "2 | P | P | P | P | P | P | P | P |"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "1 | R | N | B | Q | E | B | N | R |"
    puts "  +---+---+---+---+---+---+---+---+"
    puts "    a   b   c   d   e   f   g   h"
  end

  def display(player1, player2)
    display_board(player1.pieces, player2.pieces)
  end

  private

  ########################################
  ########## Initialize pieces ###########
  def initialize_pieces
    initialize_pawns
    initialize_rooks
    initialize_knights
    initialize_bishops
    initialize_queens
    initialize_kings
    binding.pry
  end
  
  def place_pieces(squares_for_placement, piece_type)
    squares_for_placement.each {|row, col| @squares[row][col] = piece_type}
  end
  
  def initialize_pawns
    rows = [1, 6]

    rows.each do |row|
      COLUMNS.times do |col|
        @squares[row][col] = 'Pawn'
      end
    end
  end
  
  def initialize_rooks
    squares = [[0, 0], [0, 7], [7, 0], [7, 7]]
    place_pieces(squares, 'Rook')
  end
  
  def initialize_knights
    squares = [[0, 1], [0, 6], [7, 1], [7, 6]]
    place_pieces(squares, 'Knight')
  end
  
  def initialize_bishops
    squares = [[0, 2], [0, 5], [7, 2], [7, 5]]
    place_pieces(squares, 'Bishop')

  end

  def initialize_queens
    squares = [[0, 3], [7, 3]]
    place_pieces(squares, 'Queen')
  end

  def initialize_kings 
    squares = [[0, 4], [7, 4]]
    place_pieces(squares, 'King')
  end
end