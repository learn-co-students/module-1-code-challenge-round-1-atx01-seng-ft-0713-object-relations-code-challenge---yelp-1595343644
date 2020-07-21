#store all of the reviews for the resturants and customers to refer to as needed 


class Review
  attr_accessor :rating
  attr_reader :customer, :restaurant, :name
  @@all = []
    
  def initialize(customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    self.class.all << self
end

def self.all 
    @@all
end

def customer
    #customer = Customer.all.select {|customers| customers.full_name == self.customer}
    
binding.pry
end

 def resturant
 end

end
