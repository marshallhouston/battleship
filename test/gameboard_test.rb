require 'minitest/autorun'
require 'minitest/pride'
require './lib/gameboard'

class GameboardTest < MiniTest::Test

  def test_it_exists
    assert_instance_of Gameboard, Gameboard.new
  end


end
