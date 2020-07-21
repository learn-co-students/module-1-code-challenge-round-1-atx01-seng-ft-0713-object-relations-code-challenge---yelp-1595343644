require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers
pam = Customer.new("Pam", "Beesley")
dwight = Customer.new("Dwight", "Schrute")
elaine = Customer.new("Elaine", "Benes")
kramer = Customer.new("Cosmo", "Kramer")
bizarro_elaine = Customer.new("Elaine", "Esben")
#restaurants
freezy = Restaurant.new("Freezy\'s")
bees = Restaurant.new("Snapplebees")
#reviews
rev1 = Review.new(pam, freezy, 3)
rev2 = Review.new(elaine, bees, 1)
rev3 = Review.new(kramer, bees, 5)
rev4 = Review.new(dwight, freezy, 1)
rev5 = Review.new(elaine, bees, 2)
rev6 = Review.new(bizarro_elaine, bees, 5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line