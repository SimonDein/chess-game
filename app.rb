require_relative 'lib/player'
require_relative 'lib/piece'
require_relative 'lib/board'
require 'pry'

class Chess
  attr_accessor :current_color
  attr_reader :player1, :player2, :board
  
  def initialize
    @board = Board.new
    @player1 = Player.new
    @player2 = Player.new
    @current_color = 'white'
  end

  def play
    game_settings

    loop do
      game_round
      break if false # if someone won
    end
  end
  
  private

  ########################################
  ############### Gameplay ###############
  def game_round
    @board.display
    player_moves
  end

  def player_moves
    puts "#{current_color}'s turn'"
    puts "Choose piece"
    chosen_move = gets.chomp

    puts "Choose square"
    chosen_square = gets.chomp
    
    @current_color = @current_color == 'white' ? 'black' : 'white'
  end
  
  ########################################
  ################ Board #################
  
  # ..........

  ########################################
  ############ Game settings #############
  def game_settings
    @player1.choose_name
    @player2.choose_name
    choose_color # computer chooses atm
    choose_color_start_position
  end

  def choose_color
    @player1.color = true # Player one is white for testing
  end

  def choose_color_start_position
    puts "Choose position of white. (t/b')"
    white_position = gets.strip

    Board.color_peaces(white_position)
  end

  def color_peaces
    
  end
end

game = Chess.new
game.play