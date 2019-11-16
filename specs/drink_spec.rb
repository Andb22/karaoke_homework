require("Minitest/autorun")
require("Minitest/Reporters")
require_relative('../drink')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Testdrink < Minitest::Test

  def setup
    @drink1 = Drink.new("Gin", 10)
end

  def test_drink_has_price
    assert_equal(10, @drink1.price)
  end


end
