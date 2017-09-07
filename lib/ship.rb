# 2. ships: knows the location, size, whether it's been sunk

class Ship
attr_reader :positions,
            :position1,
            :position2,
            :position3

  def initialize(position1, position2, position3='')
    @position1 = position1
    @position2 = position2
    @position3 = position3
  end

  def length
    if @position3 != ''
      3
    else
      2
    end
  end

  def occupied_positions
    positions = Array.new
    positions << @position1
    positions << @position2
    positions << @position3 unless @position3 == ''
    @positions
  end

  def occupied?(position)
    @occupied = true if occupied_positions.include?(position)
  end

  # def sunk?
  #   if
  # end

end
