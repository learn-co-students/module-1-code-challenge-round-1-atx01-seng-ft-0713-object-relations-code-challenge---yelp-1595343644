require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

Martin = Customer.new("Martin", "Di Vincenzo")
Mariano = Customer.new("Mariano", "Di Vincenzo")
John = Customer.new("John", "Smith")
New = Customer.new("Martin", "Smith")

Dominos = Restaurant.new("Dominos Pizza")
Pizza_hut = Restaurant.new("Pizza Hut")
Mc_Donalds = Restaurant.new("McDonalds")


First = Review.new(Martin,Dominos,5)
Second = Review.new(Mariano,Dominos,3)
Third = Review.new(Martin,Pizza_hut,4)
Fourth = Review.new(John,Mc_Donalds,1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line