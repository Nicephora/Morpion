require "pry"
$:.unshift File.expand_path("./../", __FILE__)
require "Player"
require "Board"

class Game
  attr_accessor :players, :board

  def initialize
    @players = []
    @status = "on going"
    @board = Board.new
    who_plays
    @current_player = @players.sample
    turn
  end

  def turn
    while @status == "on going"
      @board.play_turn (@current_player)
      @current_player == @players[0]?(@current_player = @players[1]) : (@current_player = @players[2])
    end
  end

  def who_plays
    puts "Joueur 1, choisis ton nom :"
    name1 = gets.chomp
    player_1 = Player.new(name1, "X")
    puts "Joueur 2, choisis ton nom :"
    name2 = gets.chomp
    player_2 = Player.new(name2, "O")
    @players << player_1
    @players << player_2
  end

end
