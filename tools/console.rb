require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

sohyun = Customer.new("Sohyun", "Lee")
sohyun.full_name
Customer.all
diner = Restaurant.new("Diner")
chick_fil_a = Restaurant.new("Chick-fil-A")
good = Review.new(sohyun, diner, 1)
bad = Review.new(sohyun, chick_fil_a, 4)
sohyun.num_reviews
Customer.find_by_name("Sohyun Lee")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line