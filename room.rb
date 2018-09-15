class Room

attr_reader :capacity, :entry_fee
attr_accessor :guest_list, :play_list

  def initialize (guest_list, play_list, capacity, entry_fee)
    @guest_list = guest_list
    @play_list = play_list
    @capacity = capacity
    @entry_fee = entry_fee
  end

def add_guest_to_guest_list(guest)
  if room_has_spare_capacity && guest.afford_room_entry(@entry_fee)
    guest.charge_entry_to_wallet(@entry_fee)
    @guest_list.push(guest)
  end
end

def remove_guest_from_guest_list(guest)
  position = @guest_list.index(guest)
  @guest_list.delete_at(position)
end

def add_songs_to_room(song)
  @play_list.push(song)
end

def room_has_spare_capacity
  @guest_list.length < @capacity
end

def check_for_guest_fave_song
  for @guest in @guest_list
    if @play_list.include?(@guest.fave_song)
      return "#{@guest.name} shouts 'Whoo!'"
    end
  end
end





end
