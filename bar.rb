class Bar

  attr_reader :drinks_list

  def initialize()
    @drinks_list = []
  end

  def add_drink(drink)
    @drinks_list << drink
  end

  def return_drink_price(drink_name)
    drink = @drinks_list.find { |drink| drink.name == drink_name.name}
    return drink.price
  end
end
