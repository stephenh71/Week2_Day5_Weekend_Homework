class Guest

attr_reader :name, :fave_song

  def initialize(name, fave_song, wallet)
    @name = name
    @fave_song = fave_song
    @wallet = wallet
  end

def wallet()
  return @wallet
end

def afford_room_entry(entry_fee)
  @wallet > entry_fee
end

def charge_entry_to_wallet(entry_fee)
    return @wallet -= entry_fee
  end







end
