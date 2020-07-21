require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
eddiev = Restaurant.new("EddieVs")
capital = Restaurant.new("Capital Grille")
colin = Customer.new("Colin", "Mosley")
micah = Customer.new("Micah", "Mosley")
alex = Customer.new("Alex", "Jaegar")
alex_s = Customer.new("Alex", "Smith")
justin = Customer.new("Justin", "Allison")
review1 = Review.new(colin, eddiev, 4)
review2 = Review.new(colin, capital, 5)
review3 = Review.new(colin, eddiev, 5)
review4 = Review.new(micah, eddiev, 3)
review5 = Review.new(micah, capital, 2)
review6 = Review.new(alex, eddiev, 3)
review7 = Review.new(alex_s, capital, 2)
review8 = Review.new(justin, eddiev, 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line