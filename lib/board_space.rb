# 3. individual spaces: occupied or empty (default is empty), attacked - not attacked is default?

class BoardSpace
attr_reader :occupied, :coordinate

  def initialize(coordinate)
    @coordinate = coordinate
    @occupied = false
  end

  def occupied?
    @occupied
  end


end
