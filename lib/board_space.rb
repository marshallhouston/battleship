class BoardSpace
attr_accessor :occupied, :position, :attacked

  def initialize(position)
    @position = position
    @occupied = false
    @attacked = false
  end


end
