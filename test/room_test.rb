require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test
  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_room_exists
    assert_instance_of Room, @room
  end

  def test_attributes
    assert_equal :bedroom, @room.category
    assert_equal 10, @room.length
    assert_equal 13, @room.width
    assert_equal 130, @room.area
  end
end
