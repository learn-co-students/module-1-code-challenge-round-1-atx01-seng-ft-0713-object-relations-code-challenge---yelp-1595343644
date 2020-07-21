require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
anna = Customer.new("Anna", "Reed")
dagon = Customer.new("Dagon", "Reed")
god_dagon = Customer.new("Dagon", "Innsmouth")

canes = Restaurant.new("Raising Canes")
kesos = Restaurant.new("Kesos Tacos")

likes_canes = Review.new(anna, canes, 3)
loves_kesos = Review.new(dagon, kesos, 5)
likes_kesos = Review.new(anna, kesos, 3)
hates_canes = Review.new(dagon, canes, 1)
loves_canes_now = Review.new(dagon, canes, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line