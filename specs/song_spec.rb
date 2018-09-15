require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < Minitest::Test

  def setup

    @song1 = Song.new("Song 2", "Blur")
    @song2 = Song.new("Tonight, Tonight", "Smashing Pumpkins")
    @song3 = Song.new("Going Underground", "The Jam")
    @song4 = Song.new("Jolene", "Dolly Parton")
    @song5 = Song.new("Hurt", "Nine Inch Nails")
end

def test_get_title
  assert_equal("Song 2", @song1.title)
end

def test_get_artist
  assert_equal("Blur", @song1.artist)
end







end
