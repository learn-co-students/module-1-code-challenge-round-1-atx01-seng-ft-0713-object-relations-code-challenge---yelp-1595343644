require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
micah=Customer.new("Micah", "Mosley")
colin=Customer.new("Colin", "Mosley")
micah2=Customer.new("Micah", "Jones")
mark=Customer.new("Mark", "Mosley")
makie=Customer.new("Makie", "Mosley")
eddie=Restaurant.new("EddieVs")
trulucks=Restaurant.new("Trulucks")
r1=Review.new(micah, eddie, 5)
r2=Review.new(micah, trulucks, 4)
r3=Review.new(colin, eddie, 3)
r4=Review.new(micah2, eddie, 4)
r5=Review.new(mark, trulucks, 1)
r6=Review.new(makie, eddie, 5)
r7=Review.new(makie, trulucks, 5)
r8=Review.new(micah,eddie,4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line