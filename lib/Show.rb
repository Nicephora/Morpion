require "pry"
$:.unshift File.expand_path("./../", __FILE__)
require_relative 'BoardCase'
require_relative 'Board'
require_relative 'Player'
require_relative 'Game'

class Show
def initialize
  attr_accessor :boardcases :value

def initialize
@boardcases = boardcases
@value = value
end

  def print_board  #affiche une magnifique board pimpée avec colorize
    barre = '|'
    x = ' ' * 3
    y = ' ' * 14 + barre + ' ' * 7 + barre
    z = ' ' * 6 + '_' * 26

    puts " \n\n "
    puts y
    puts ' ' * 10 + @boardcases[0].value + x + barre + x + @boardcases[1].value + x + barre + x + @boardcases[2].value
    puts y
    puts z
    puts
    puts y
    puts ' ' * 10 + @boardcases[3].value + x + barre + x + @boardcases[4].value + x + barre + x + @boardcases[5].value
    puts y
    puts z
    puts
    puts y
    puts ' ' * 10 + @boardcases[6].value + x + barre + x + @boardcases[7].value + x + barre + x + @boardcases[8].value
    puts y
    puts
    puts
  end

end
