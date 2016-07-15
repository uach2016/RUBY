=begin
IMAGINE THAT WE RUN A MILKSHAKE BUSSINES AND 
WE WANT TO CHECKOUT THE PRICE OF AN INDIVIDUAL MILKSHAKE
AND ALSO THE PRICE FOR THE SUM OF A FEW MILKSHAKES IN CASE
A FAMILY OR GROUP OF FRIENDS COMES TO OUR SHOP.
THE FOLLOWING CODE CAN DO IT FOR US
THIS CODE HAS 3 DIFERENT CLASSES WHICH I'M GOING TO EXPLAIN
CLASS BY CLASS
=end

class ShackShop#FOR ALL THE MILKSHAKES TOGUETHER
  def initialize
    @milkshakes = []#LIST OF ALL MILKSHAKES
  end

  def add_milkshake(milkshake)
    @milkshakes.push(milkshake)#ADD INDIVIDUAL MILKSHAKE TO MY LIST
  end

  def price_of_all_milkshakes
    total_price_of_all_milkshakes = 0
    
    @milkshakes.each do |milkshake|
      total_price_of_all_milkshakes += milkshake.price_of_milkshake #GIVE US THE SUM OF THE PRICE OF EVERY MILKSHAKE
    end

    puts "\nYour total price for all milkshakes is #{total_price_of_all_milkshakes}€."
  end
end

class MilkShake #FOR EVERY INDIVIDUAL MILKSHAKE
  attr_accessor :name, :price#GIVE US ACCESS FROM class ingridient AND MAKE OUR CODE NICE AND CLEAN
  def initialize#CONTENT BASE PRICE AND LIST OF EVERY INGREDIENT
    @base_price = 3
    @ingredients = []
  end

  def add_ingredient(ingredient)#ADD INGREDIENT TO OUR LIST OF INGREDIENTS
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
      total_price_of_milkshake = @base_price

      @ingredients.each do |ingredient|
        total_price_of_milkshake += ingredient.price#SUM OF PRICES OF EVERY INGREDIENT
      end

  # WE CAN USE => puts "Price for one milkshake #{total_price_of_milkshake}."
  total_price_of_milkshake#GIVE US THE SUM OF PRICES OF EVERY INGREDIENT
    end
end

class Ingredient#WE TAKE THE INGREDIENT WITH ITS PRICE
 
 attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end


#WITH THE BELOW CODE WE CHECK OUR CODE
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake = MilkShake.new
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
puts nizars_milkshake.price_of_milkshake


anthonys_milkshake = MilkShake.new
anthonys_milkshake.add_ingredient(banana)
anthonys_milkshake.add_ingredient(chocolate_chips)

deysis_milkshake = MilkShake.new
deysis_milkshake.add_ingredient(banana)

angies_milkshake = MilkShake.new
angies_milkshake.add_ingredient(chocolate_chips)

all_milkshakes = ShackShop.new
all_milkshakes.add_milkshake(anthonys_milkshake)
all_milkshakes.add_milkshake(deysis_milkshake)
all_milkshakes.add_milkshake(angies_milkshake)

puts all_milkshakes.price_of_all_milkshakes


