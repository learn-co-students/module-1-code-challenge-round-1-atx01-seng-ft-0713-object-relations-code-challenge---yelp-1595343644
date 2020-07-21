require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

chris = Customer.new("Chris", "Torres")
frida = Customer.new("Frida", "Calo")
vincent = Customer.new("Vincent", "Goh")

pizza_planet = Restaurant.new("Pizza Planet")
gusteau = Restaurant.new("Gusteau's")
panda = Restaurant.new("Panda Express")

rev1 = Review.new(chris, pizza_planet, 6)
rev2 = Review.new(frida, gusteau, 10)
rev3 = Review.new(vincent, panda, 4)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line