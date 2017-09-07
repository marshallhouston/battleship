require 'minitest/autorun'
require 'minitest/pride'
require './lib/board_space'

class BoardSpaceTest < MiniTest::Test

  def test_it_exists
    assert BoardSpace.new("D2")
  end

  def test_it_takes_coordinate_as_an_argument
    space = BoardSpace.new("A1")
    expected = "A1"
    actual = space.coordinate

    assert_equal expected, actual
  end

  def test_it_can_accept_a_different_coordinate
    space = BoardSpace.new("B4")
    expected = "B4"
    actual = space.coordinate

    assert_equal expected, actual
  end

  def test_space_not_occupied_by_default_but_can_be_changed
    space = BoardSpace.new("B3")

    refute space.occupied
  end

  def test_it_is_not_attacked_by_default
    space = BoardSpace.new("C4")

    refute space.attacked
  end


end
