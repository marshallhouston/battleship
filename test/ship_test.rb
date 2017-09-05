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



end
