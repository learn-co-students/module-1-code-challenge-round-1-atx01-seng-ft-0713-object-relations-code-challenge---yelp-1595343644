require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
ricky = Customer.new("Rick", "Owens")
james = Customer.new("Jimmy", "Boy")
jayme = Customer.new("Jimmy", "Girl")

arlos = Restaurant.new("Arlos")
easy = Restaurant.new("Easy Tiger")



bad_review1 = Review.new(ricky, arlos, 4)
bad_review2 = Review.new(james, arlos, 2)
good_review = Review.new(james, easy, 10)
meh_review = Review.new(james, easy, 7)

james.add_review(arlos, 6)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line