require_relative 'piece'

class Player
  attr_accessor :color
  attr_reader :name

  def initialize
    @name = nil
    @color = nil
  end

  def choose_name
    puts "Player please enter your name"
    n = nil
    loop do
      n = gets.strip
      break unless n.empty? && n.lengt < 0
      puts "Please enter a player name"
    end
    n = n.split.map(&:capitalize).join(' ')
    @name = n
  end
end