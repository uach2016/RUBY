=begin
  THE FOLLOWING CODE REPRESENT A SHOPPING CARD 
  WHICH SPECIAL VALUES. FOR INSTANCE IF SOMEONE BUY MORE 
  THAN 5 ITEMS HAS DISCOUNT, ALSO IF YOU BUY FRUITS ON WEEKEND
  AND IF YOU BUY HOUSEWARE ITEM FOR MORE THAN £100 
=end

class ShoppingCart
 attr_accessor(:price)#GIVE US ACCESS FROM Item class
  def initialize
    @items = []#LIST OF ITEMS
  end

  def add_item(item)
    @items.push(item)#ADD ITEMS TO OUR LIST
  end

def checkout
    total_price = 0
    
    @items.each do |item|
      total_price += item.price#SUM OF PRICES OF ALL THE ITEMS
    end
    if @items.length > 5
      total_price * 0.9#OUR DISCOUNT FOR MORE THAN 5 ITEMS
    else
      total_price
    end

    puts "Your total price for all your items is #{total_price}€."
  end
end

class Item
attr_accessor(:price)

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Fruit < Item
  def price
    now = Time.now

	if now.saturday? || now.sunday?#OUR DISCOUNT ON WEEKENDS
      return @price * 0.9
    else
      return @price
    end
  end
end

class Houseware < Item
	def price
    price = @price

	if price > 100#OUR DISCOUNT FOR MORE THAN £100
      return @price * 0.5
    else
      return @price
    end
  end
end

#CHECK OUR CODE
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart = ShoppingCart.new
joshs_cart.add_item(oj)
joshs_cart.add_item(oj)
joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(banana)
joshs_cart.add_item(vaccuum)
joshs_cart.checkout
