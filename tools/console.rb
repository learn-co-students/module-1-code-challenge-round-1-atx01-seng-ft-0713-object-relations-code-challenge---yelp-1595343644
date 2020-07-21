require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

piper = Customer.new("Richard", "Hendricks")
sellout= Customer.new("Elich", "Bachman")
jian = Customer.new("Jian", "Yang")

franklin = Restaurant.new("Franklin Barbecue")
terry = Restaurant.new("Terry Black's")
rudy = Restaurant.new("Rudy's BBQ")



review1 = Review.new(piper, franklin, 2.0)
review2 = Review.new(sellout, terry, 5.0)
review3 = Review.new(jian, rudy, 3.0)
review4 = Review.new(jian, terry, 4.0)
review5 = Review.new(piper, rudy, 2.0)
review6 = Review.new(sellout, franklin, 3.5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line