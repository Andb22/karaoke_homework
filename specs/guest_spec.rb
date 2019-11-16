require("Minitest/autorun")
require("Minitest/Reporters")
require_relative('../guest')
require_relative('../room')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Testguest < Minitest::Test

  def setup
    @guest1 = Guest.new("Kazu", 100, "Bat out of Hell")
  end

  def test_guest_has_name
    assert_equal("Kazu", @guest1.name)
  end

end
