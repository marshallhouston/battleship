require 'minitest/autorun'
require 'minitest/pride'
require './lib/gameboard'

class GameboardTest < MiniTest::Test

  def test_it_exists
    assert_instance_of Gameboard, Gameboard.new
  end

  def test_it_has_sixteen_spaces
    game_board = Gameboard.new
    game_board.game_spaces
    expected = 16
    actual = game_board.game_spaces.count

    assert_equal expected, actual
  end





end
