# 2. ships: knows the location, size, whether it's been sunk
require './lib/board_space'

class Ship
attr_reader :positions,
            :position1,
            :position2,
            :position3

  def initialize(position1, position2, position3='')
    @position1 = BoardSpace.new(position1)
    @position2 = BoardSpace.new(position2)
    @position3 = BoardSpace.new(position3) unless position3 == ''
    @positions = [@position1, @position2, @position3].compact
  end

  def length
    if position3 != nil
      3
    else
      2
    end
  end

  # def sunk?
  #   if all spaces are attacked, then it is sunk
  # end

end
