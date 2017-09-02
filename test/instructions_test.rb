require 'minitest/autorun'
require 'minitest/pride'
require './lib/instructions'

class InstructionsTest < MiniTest::Test

  def test_it_exists
    assert_instance_of Instructions, Instructions.new
  end

  
end
