require_relative 'lib/player'
require_relative 'lib/piece'
require_relative 'lib/board'
require 'pry'

class Chess
  
  attr_reader :player1, :player2, :board
  
  def initialize
    @board = Board.new
    @player1 = Player.new
    @player2 = Player.new
  end

  def play
    game_settings

    loop do
      player_moves
    end
  end
  
  private

  ########################################
  ############### Gameplay ###############
  def player_moves
    display_board
  end
  
  ########################################
  ################ Board #################
  def display_board
    gets = "hey"
  end
  
  ########################################
  ############ Game settings #############
  def game_settings
    choose_name(1)
    choose_name(2)
    choose_color # computer chooses atm
  end

  def choose_name(player_num)
    puts "Player #{player_num} please enter your name"
    n = nil
    loop do
      n = gets.strip
      break unless n.empty? && n.lengt < 0
      puts "Please enter a player name"
    end
    n = n.split.map(&:capitalize).join(' ')
    human.name = n
  end

  def choose_color
    # Player one is white
    @player1.color = true
  end
end

game = Chess.new
game.play