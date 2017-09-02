require './lib/instructions'

class Battleship

  def initialize
    puts "Welcome to BATTLESHIP\n
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    user_input = gets.chomp
    if user_input == "p" || user_input == "play"
      p "Great, let's play."
      #play the game.... instantiate a new play instance
    elsif user_input == "i" || user_input == "instruction" || user_input == "instructions"
      p "Sweet, here are the instructions."
      #start a new instance of the instructions class.
    elsif user_input == "q" || user_input == "quit"
      p "Ok quitter, bye!"
      # exit the game
    else
      "I didn't understand what you said. Try again."
      user_input = gets.chomp
    end

  end


end

Battleship.new
