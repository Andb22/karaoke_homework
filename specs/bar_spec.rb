require("Minitest/autorun")
require("Minitest/Reporters")
require_relative('../bar')
require_relative('../room')
require_relative('../guest')
require_relative('../drink')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Testbar < Minitest::Test

  def setup
    @drink1 = Drink.new("Gin", 10)
    @drink2 = Drink.new("Beer", 5)
    @drink3 = Drink.new("Wine", 8)

    @bar = Bar.new()
  end

  def test_price_of_drinks
    @bar.add_drink(@drink1)
    @bar.add_drink(@drink2)
    @bar.add_drink(@drink3)
assert_equal(10, @bar.return_drink_price(@drink1))
  end

end
