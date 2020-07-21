require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

scott = Customer.new("Scott", "Adams")
daveN = Customer.new("Dave", "Navarro")
daveC = Customer.new("Dave", "Castillo")

palios = Restaurant.new("Palios")

review1 = Review.new(scott, palios, 5)
review2 = Review.new(daveN, palios, 6)
review3 = Review.new(daveN, palios, 7)
review4 = Review.new(daveC, palios, 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
