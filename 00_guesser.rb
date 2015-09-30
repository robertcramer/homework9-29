require "pry"
require "./human"
require "./random"
require "./counting"
require "./smart"

class GuessingGame
  def initialize(player)
    @player = player
  end

  def play
    number = rand(1..100)
    guess = @player.get_guess(number)
    count = 1
    until guess == number
      if guess > number
        puts "Too High!"
      else
        puts "Too Low!"
      end
      guess = @player.get_guess(number)
      count += 1
    end
    puts "You win! Took #{count} tries. The number was #{number}."
  end
end

game = GuessingGame.new(SmartPlayer.new)

binding.pry

puts "just screwing around"
