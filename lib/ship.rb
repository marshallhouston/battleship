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

  def occupied_coordinates
    coordinates = Array.new
    coordinates << @coordinate1
    coordinates << @coordinate2
    coordinates << @coordinate3 unless @coordinate3 == ''
    coordinates
  end

  def occupied?(position)
    @occupied = true if occupied_coordinates.include?(position)
  end



  # def sunk?
  #   #false unless all coordinates are hit
  # end

end
