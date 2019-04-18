require 'pry'
require 'rubocop'

$:.unshift File.expand_path("./../", __FILE__)

require_relative 'BoardCase'
require_relative 'Board'
require_relative 'Player'
require_relative 'Game'



def perform
  Game.new
end


perform
