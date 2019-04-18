require "pry"
$:.unshift File.expand_path("./../", __FILE__)
require_relative 'BoardCase'
require_relative 'Board'
require_relative 'Player'
require_relative 'Game'

class Board
  attr_accessor :boardcases, :count_coup, :symbole

  def initialize
    @number_repeated = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    @count_coup = count_coup
    @choice
    @symbole = symbole
    @combinaisons_gagnantes = [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"], ["1", "4", "7"], ["2", "5", "8"], ["3", "6", "9"], ["3", "5", "7"], ["1", "5", "9"]]
    @boardcases = []
    for i in (1..9)
      @boardcases << BoardCase.new
    end
  end

  def coup_joue
    @count_coup = @number_repeated.length
    puts "Il te reste #{@count_coup} tours pour gagner !"
  end

  def play_turn(player)
    loop do
      puts "Tu choisis quel case ?"
      @choice = gets.chomp
      break if @number_repeated.include?(@choice)
      puts"L'emplacement #{@choice} est déjà pris! Chosis une autre case"
    end

    @number_repeated.delete(@choice)

    case @choice
    when "1"
      @boardcases[0].valeur = player.symbole
      @combinaisons_gagnantes.delete("1")
    when "2"
      @boardcases[1].valeur = player.symbole
      @combinaisons_gagnantes.delete("2")
    when "3"
      @boardcases[2].valeur = player.symbole
      @combinaisons_gagnantes.delete("3")
    when "4"
      @boardcases[3].valeur = player.symbole
      @combinaisons_gagnantes.delete("4")
    when "5"
      @boardcases[4].valeur = player.symbole
      @combinaisons_gagnantes.delete("5")
    when "6"
      @boardcases[5].valeur = player.symbole
      @combinaisons_gagnantes.delete("6")
    when "7"
      @boardcases[6].valeur = player.symbole
      @combinaisons_gagnantes.delete("7")
    when "8"
      @boardcases[7].valeur = player.symbole
      @combinaisons_gagnantes.delete("8")
    when "9"
      @boardcases[8].valeur = player.symbole
      @combinaisons_gagnantes.delete("9")
    end
  end

  def victory(player)
    @combinaisons_gagnantes.each do |i|
      if i.empty?
        puts "#{player}, tu as gagné ! Bien joué :)"
      end
    end
  end

end
