require("Minitest/autorun")
require("Minitest/Reporters")
require_relative('../room')
require_relative('../guest')
require_relative('../song')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Testroom < Minitest::Test

def setup
  @guest1 = Guest.new("Kazu", 0)
  @guest2 = Guest.new("Hisa", 100)
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

end
