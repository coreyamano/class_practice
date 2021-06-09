#Rewrite your store items using a class instead of a hash.
#a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
#b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.

#Rewrite your store items using a class with a single options hash in the initialize method.

#Replace your “reader” and “writer” methods using the attr_reader and attr_writer shortcuts!


#create class and def initialize

class Coffee

  attr_reader :item_name, :price, :availability
  attr_writer :price, :availability

  def initialize(input_options)
    @item_name = input_options[:item_name]
    @price = input_options[:price]
    @availability = input_options[:availability]
  end

  def coffee_info
    p "#{@item_name} is #{@price}. Is available: #{@availability}."
  end

end

coffee1 = Coffee.new({:item_name => "hot coffee", :price => 3.00, :availability => true})
coffee2 = Coffee.new(item_name: "cold brew", price: 4.00, availability: true)
coffee3 = Coffee.new(item_name: "decaf coffee", availability: false, price: 2.50)

coffee1.coffee_info
coffee1.price=(3.50)
coffee1.coffee_info
coffee1.availability=(false)
coffee1.coffee_info

p "#{coffee2.item_name}"
p "#{coffee2.price}"
p "#{coffee2.availability}"

p "#{coffee3.item_name}"
p "#{coffee3.price}"
p "#{coffee3.availability}"