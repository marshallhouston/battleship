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
    expected = 3
    actual = ship.length

    assert_equal expected, actual
  end

  def test_it_can_assign_spaces_to_a_two_unit_ship
    ship = Ship.new("A1", "A2")

    expected = ["A1", "A2"]
    actual = ship.occupied_positions

    assert_equal expected, actual
  end

  def test_it_can_assign_spaces_to_a_three_unit_ship
    ship = Ship.new("A1", "A2", "A3")

    expected = ["A1", "A2", "A3"]
    actual = ship.occupied_positions

    assert_equal expected, actual
  end

  def test_it_changes_the_space_to_occupied_when_it_assigns_a_value_to_a_ship
    ship = Ship.new("A1", "A2")

    assert ship.occupied?("A1")
    assert ship.occupied?("A2")
    refute ship.occupied?("B3")
  end

  def test_it_can_be_hit
    skip
    ship = Ship.new("A1", "A2")

  end

  # def test_it_knows_if_it_is_sunk
  #   ship = Ship.new("B3", "B4")
  #
  #   assert ship.sunk?
  # end

end
