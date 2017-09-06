# 1. gameboard: knows it has spaces, ships, and an owner.
#

require './lib/board_space'

class Gameboard

  def game_spaces
    game_spaces = []
    GAMEBOARD.map do |position|
      game_spaces << BoardSpace.new(position)
    end
  end

  GAMEBOARD = [
    "A1","A2","A3","A4",
    "B1","B2","B3","B4",
    "C1","C2","C3","C4",
    "D1","D2","D3","D4"
    ]

end
