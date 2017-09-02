class Gameboard


  TWO_UNIT_SHIP_PLACEMENT = [["A1","A2"],["A2","A3"],["A3","A4"],["B1","B2"],["B2","B3"],["B3","B4"],["C1","C2"],["C2","C3"],["C3","C4"],["D1","D2"],["D2","D3"],["D3","D4"],["A1","B1"],["B1","1c"],["C1","D1"],["A2","B2"],["B2","C2"],["C2","D2"],["A3","B3"],["B3","C3"],["C3","D3"],["A4","B4"],["B4","C4"],["C4","D4"]]

  THREE_UNIT_SHIP_PLACEMENT =



#attempting to define the pieces of the board.... this might be used to help render the hits or misses
# what was entered as a shot? lookup to find the value. then, if this value is in the "ship positions" array, it will return as a H. otherwise it will return as M.

  GAMEBOARD = {
    "A1" => line_1[0], "A2" => line_1[1], "A3" => line_1[2], "A4" => line_1[3],
    "B1" => line_2[0], "B2" => line_2[1], "B3" => line_2[2], "B4" => line_2[3],
    "C1" => line_3[0], "C2" => line_3[1], "C3" => line_3[2], "C4" => line_3[3],
    "D1" => line_4[0], "D2" => line_4[1], "D3" => line_4[2], "D4" => line_4[3]
  }

end
