require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

lucio = Customer.new("Lucio", "Gonzalez")
ryan = Customer.new("Ryan", "Reyes")
angel = Customer.new("Angel", "Alanis")
lucio2 = Customer.new("Lucio", "Garza")

pluckers = Restaurant.new("Pluckers")
hoovers = Restaurant.new("Hoovers")

review1 = Review.new(lucio, pluckers, 5)
review2 = Review.new(ryan, pluckers, 5)
review3 = Review.new(angel, hoovers, 3)
review4 = Review.new(lucio, hoovers, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
