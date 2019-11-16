require("Minitest/autorun")
require("Minitest/Reporters")
require_relative('../room')
require_relative('../guest')
require_relative('../song')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Testroom < Minitest::Test

def setup
  @guest1 = Guest.new("Kazu", 50, "")
  @guest2 = Guest.new("Hisa", 100, "")
  @guest3 = Guest.new("Yasu", 20, "")
  @guest4 = Guest.new("Mitsu", 0, "")
  @guest5 = Guest.new("Yuna", 120, "Lay Lady Lay")
  @song1 = Song.new("Bohemian Rhapsody")
  @song2 = Song.new("Lay Lady Lay")

@playlist1 = [@song1, @song2]

@room = Room.new("Party Room", @playlist1)

end

  def test_room_has_name
    assert_equal("Party Room", @room.name)
  end

  def test_check_in_guest
      @room.add_guest(@guest1)
      @room.add_guest(@guest2)
      assert_equal(2, @room.number_of_guests)
  end

  def test_check_out_guest
      @room.add_guest(@guest1)
      @room.add_guest(@guest2)
      @room.remove_guest(@guest2)
      assert_equal(false, @room.is_guest_in_room(@guest2))
  end

  def test_does_room_have_songs
      assert_equal(@song1, @room.playlist[0])
  end

  def test_room_is_full
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    assert_equal("Room is full", @room.add_guest(@guest3))
  end

  def test_guest_cannot_afford_entry_fee
    @room.add_guest(@guest4)
    assert_equal(false, @room.guest_entry_fee(@guest4))
  end

  def test_guest_can_afford_entry_fee
    @room.add_guest(@guest2)
    assert_equal(true, @room.guest_entry_fee(@guest2))
  end

  def test_guests_fav_song_in_room
    assert_equal("Woohoo", @room.add_guest(@guest5))
  end
end
