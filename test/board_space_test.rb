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
    actual = space.position

    assert_equal expected, actual
  end

  def test_it_can_accept_a_different_coordinate
    space = BoardSpace.new("B4")
    expected = "B4"
    actual = space.position

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



  # def test_it_only_accepts_letters_A_to_D_as_first_coordinate
  #   skip
  #   space_1 = BoardSpace.new("D2")
  #   expected_1 = "D2"
  #   actual_1 = space_1.position
  #
  #   space_2 = BoardSpace.new("E2")
  #   expected_2 = "Not a valid placement. The letter must be A, B, C, or D."
  #   actual_2 = space_2.position
  #
  #   assert_equal expected_1, actual_1
  #   assert_equal expected_2, actual_2
  # end
  #
  # def test_it_only_accepts_numbers_1_to_4_as_second_coordinate
  #   skip
  #   space_1 = BoardSpace.new("D2")
  #   expected_1 = "D2"
  #   actual_1 = space_1.position
  #
  #   space_2 = BoardSpace.new("A5")
  #   expected_2 = "Not a valid placement. The number must be between 1 and 4."
  #   actual_2 = space_2.position
  #
  #   assert_equal expected_1, actual_1
  #   assert_equal expected_2, actual_2
  # end

end
