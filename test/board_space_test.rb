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

  def test_it_only_accepts_letters_A_to_D_as_first_coordinate
    skip
    space_1 = BoardSpace.new("D2")
    expected_1 = "D2"
    actual_1 = space_1.coordinate

    space_2 = BoardSpace.new("E2")
    expected_2 = "Not a valid placement. The letter must be A, B, C, or D."
    actual_2 = space_2.coordinate

    assert_equal expected_1, actual_1
    assert_equal expected_2, actual_2
  end

  def test_it_only_accepts_numbers_1_to_4_as_second_coordinate
    skip
    space_1 = BoardSpace.new("D2")
    expected_1 = "D2"
    actual_1 = space_1.coordinate

    space_2 = BoardSpace.new("A5")
    expected_2 = "Not a valid placement. The number must be between 1 and 4."
    actual_2 = space_2.coordinate

    assert_equal expected_1, actual_1
    assert_equal expected_2, actual_2
  end

  def test_space_not_occupied_by_default
    space = BoardSpace.new("B3")
    expected = false
    actual = space.occupied?
    assert_equal expected, actual
  end

  # def test_it_can_be_occupied
  #   skip
  #   space = BoardSpace.new
  #   expected = true
  #   actual =
  # end

end
