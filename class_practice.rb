#Rewrite your store items using a class instead of a hash.
#a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
#b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.

#create class and def initialize

class Coffee

  def initialize(input_item_name, input_price, input_availability)
    @item_name = input_item_name
    @price = input_price
    @availability = input_availability
  end

  def coffee_info
    p "#{@item_name} is #{@price}. Is available: #{@availability}."
  end

#reader/writer methods--reader all, writer - price/availability

  def item_name
    @item_name
  end

  def price
    @price
  end

  def price=(input_price)
    @price = input_price
  end

  def availability
    @availability
  end

  def availability=(input_availability)
    @availability = input_availability
  end

end

coffee1 = Coffee.new("hot coffee", 3.00, true)
coffee2 = Coffee.new("cold brew", 4.00, true)
coffee3 = Coffee.new("decaf coffee", 2.50, false)

coffee1.coffee_info
coffee1.price=(3.50)
coffee1.coffee_info
coffee1.availability=(false)
coffee1.coffee_info

p "#{coffee2.item_name}"
p "#{coffee2.price}"
p "#{coffee2.availability}"