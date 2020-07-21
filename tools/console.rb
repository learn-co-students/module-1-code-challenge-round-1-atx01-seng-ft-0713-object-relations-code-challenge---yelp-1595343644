require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#one restaurant with multiple customers through reviews
customer1 = Customer.new("Bill", "Gates")
customer1_2 = Customer.new("Tupac", "Shakur")
customer1_3 = Customer.new("Miley", "Cyrus")
restaurant1 = Restaurant.new("Billy Bob's Burgers")
review1 = Review.new(customer1, restaurant1, 6.5)
review1_2 = Review.new(customer1_2, restaurant1, 8.5)
review1_3 = Review.new(customer1_3, restaurant1, 10.0)
review1_3_same = Review.new(customer1_3, restaurant1, 10.0) 


#one customer with multiple restaurant associationd through reviews 
customer2 = Customer.new("Sam", "Walton")
restaurant2 = Restaurant.new("Cheddar's")
restaurant2_2 = Restaurant.new("Numero28")
restaurant2_3 = Restaurant.new("Perla's")
review2 = Review.new(customer2, restaurant2, 8.0)
review2_2 = Review.new(customer2, restaurant2_2, 8.5)
review2_3 =  Review.new(customer2, restaurant2_3, 9)
review2_3_same = Review.new(customer2, restaurant2_3, 9)


customer3 = Customer.new("Richard", "Branson")
customer3_1 = Customer.new("Richard", "Pryor")
restaurant3 = Restaurant.new("McDonald's")
review3 = Review.new(customer3, restaurant3, 2.7)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line