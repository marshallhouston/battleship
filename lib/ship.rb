# 2. ships: knows the location, size, whether it's been sunk

class Ship

  def initialize(coordinate1, coordinate2, coordinate3='')
    @coordinate1 = coordinate1
    @coordinate2 = coordinate2
    @coordinate3 = coordinate3
  end

  def length
    if @coordinate3 != ''
      3
    else
      2
    end
  end

end
