class BoardSpace
attr_accessor :occupied, :coordinate, :attacked

  def initialize(coordinate)
    @coordinate = coordinate
    @occupied = false
    @attacked = false
  end

  def occupied?
    @occupied
    #this should be true if it gets assigned to a ship
  end

  def attacked?
    @attacked
    #this should be true if the player inputs the coordinate
  end
end
