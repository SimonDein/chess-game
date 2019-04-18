require_relative 'piece'

class Player
  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end