require './lib/ship'

class Player
attr_reader :name, :ships


  def initialize(name)
    @name = name
    @ships = []
  end

  def add_ship(position1, position2, position3='')
    ship = Ship.new(position1, position2, position3)
    @ships << ship
  end

end
