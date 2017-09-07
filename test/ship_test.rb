require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'

class ShipTest < MiniTest::Test

  def test_it_exists
    assert Ship.new("A1", "B1")
  end

  def test_it_knows_its_length_for_a_two_unit_ship
    ship = Ship.new("B3", "B4")
    assert_equal 2, ship.length
  end

  def test_it_knows_its_length
    ship = Ship.new("A1", "A2", "A3")
    ship.length

    assert_equal 3, ship.length
  end

  def test_it_can_assign_spaces_to_a_two_unit_ship
    ship = Ship.new("A1", "A2")

    assert_equal "A1", ship.position1.coordinate
    assert_equal "A2", ship.position2.coordinate
  end

  def test_it_can_assign_spaces_to_a_three_unit_ship
    ship = Ship.new("B1", "C1", "D1")

    assert_equal "B1", ship.position1.coordinate
    assert_equal "C1", ship.position2.coordinate
    assert_equal "D1", ship.position3.coordinate
  end

  def test_it_changes_the_space_to_occupied_when_ship_is_created
    ship = Ship.new("A1", "A2")

    assert ship.position1.occupied?
    assert ship.position2.occupied?

  end

  def test_it_can_be_hit
   ship = Ship.new("A1", "A2")
   refute ship.position1.attacked?
   #after the player enters info, this should be changed to attacked
   #player.attack(position1)
   #assert ship.position1.attacked?
  end

  # def test_it_knows_if_it_is_sunk
  #   ship = Ship.new("B3", "B4")
  #
  #   assert ship.sunk?
  # end

end
