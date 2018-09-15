require('pry')
require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < Minitest::Test

  def setup
    @guest1 = Guest.new("Stephen", "Tonight, Tonight", 250)
    @guest2 = Guest.new("Laura", "Ready or Not", 50)
    @guest3 = Guest.new("Mike",@song5, 100)

    @room1 = Room.new([],[["Tonight, Tonight", "Smashing Pumpkins"],["Song 2", "Blur"]], 50, 10)
    @room2 = Room.new([],[], 30, 5)
    @room3 = Room.new([@guest2,@guest3],[@song5], 2, 2)

    @song4 = Song.new("Jolene", "Dolly Parton")
    @song5 = Song.new("Hurt", "Nine Inch Nails")

  end

def test_get_guest_list
  assert_equal([@guest2,@guest3], @room3.guest_list)
end

def test_get_play_list
assert_equal([["Tonight, Tonight", "Smashing Pumpkins"],["Song 2", "Blur"]], @room1.play_list)
end

def test_get_capacity
  assert_equal(50,@room1.capacity)
end

def test_get_entry_fee
  assert_equal(10,@room1.entry_fee)
end

def test_add_guest_to_guest_list__true
@room2.add_guest_to_guest_list(@guest1)
assert_equal(true, @room2.guest_list.include?(@guest1))
end

def test_remove_guest_from_guest_list
@room3.remove_guest_from_guest_list(@guest2)
assert_equal(false, @room3.guest_list.include?(@guest2))
end

def test_add_songs_to_room
@room2.add_songs_to_room(@song5)
assert_equal(1, @room2.play_list.length)
end

def test_room_has_spare_capacity__true
assert_equal(true, @room1.room_has_spare_capacity)
end

def test_room_has_spare_capacity__false
assert_equal(false, @room3.room_has_spare_capacity)
end

def test_check_for_guest_fave_song
assert_equal("Mike shouts 'Whoo!'", @room3.check_for_guest_fave_song)
end





end
