require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/ship'

class PlayerTest < MiniTest::Test

  def test_it_exists
    assert_instance_of Player, Player.new("Player_1")
  end

  def test_it_has_a_name
    player = Player.new("Player_1")

    assert_equal "Player_1", player.name
  end

  def test_it_can_add_a_two_unit_ship

    player = Player.new("Player_1")
    player.add_ship("A3", "A4")
    assert_instance_of Ship, player.ships[0]

    ship = player.ships[0]
    assert_equal "A3", ship.position1
    assert_equal "A4", ship.position2

  end

  def test_it_can_add_a_three_unit_ship
    player = Player.new("Player_1")

    player.add_ship("A2", "A3", "A4")
    ship = player.ships[0]
    assert_equal "A2", ship.position1
    assert_equal "A3", ship.position2
    assert_equal "A4", ship.position3
  end

end
