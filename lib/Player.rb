require "pry"

$:.unshift File.expand_path("./../", __FILE__)

class Player
attr_accessor :nom, :symbole

def initialize(nom, symbole)
@nom = nom
@symbole = symbole
end
end
