require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Tomas", "Gonzalez")
restaurant1 = Restaurant.new("Dons Japanese Food")
review1 = Review.new(customer1, restaurant1, 10)

customer4 = Customer.new("Vincent", "Ramirez")
review4 = Review.new(customer4, restaurant1, 6)

review5 = Review.new(customer4, restaurant1, 8)


customer2 = Customer.new("Micah", "Mosley")
restaurant2 = Restaurant.new("Subway")
review2 = Review.new(customer2, restaurant2, 5)

customer3 = Customer.new("Cedric", "Patton")
restaurant3 = Restaurant.new("Torchy's")
review3 = Review.new(customer3, restaurant3, 8)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line