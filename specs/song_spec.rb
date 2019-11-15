require("Minitest/autorun")
require("Minitest/Reporters")
require_relative('../song')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Testsong < Minitest::Test

  def setup
    @song = Song.new("Bohemian Rhapsody")
  end

  def test_song_has_name
    assert_equal("Bohemian Rhapsody", @song.name)
  end


end
