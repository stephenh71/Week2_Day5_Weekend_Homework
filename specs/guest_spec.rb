require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")

class GuestTest < Minitest::Test

  def setup

    @guest1 = Guest.new("Stephen", ["Tonight, Tonight", "Smashing Pumpkins"], 250)

    @room1 = Room.new([],["Tonight, Tonight", "Adore"], 50, 10)
  end

def test_get_name
  assert_equal("Stephen", @guest1.name)
end

def test_get_fave_song
  assert_equal(["Tonight, Tonight", "Smashing Pumpkins"], @guest1.fave_song)
end

def test_get_wallet
  assert_equal(250, @guest1.wallet())
end

def test_guest_can_afford_room_entry__true
assert_equal(true, @guest1.afford_room_entry(@room1.entry_fee))
end

def test_guest_can_afford_room_entry__false

guest3 = Guest.new("Brian", "Another One Bites The Dust",0)

assert_equal(false, guest3.afford_room_entry(@room1.entry_fee))
end

def test_charge_entry_to_wallet
  assert_equal(240, @guest1.charge_entry_to_wallet(@room1.entry_fee))
end









end
