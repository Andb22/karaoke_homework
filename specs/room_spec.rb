require("Minitest/autorun")
require("Minitest/Reporters")
require_relative('../room')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Testroom < Minitest::Test

  def setup(name, playlist, guests_in_room)
    @name = name
    @playlist = playlist
    @guests_in_room = guests_in_room
  end

end
