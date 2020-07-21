class Review
  attr_accessor :rating # reviewinstance.rating returns rating for a restaurant
  attr_reader :customer, :restaurant # returns customer & restaurant obj for given review, read-only
  @@all = []
  
  def initialize(customer, restaurant, rating) #initializes w/ customer, restaurant, rating
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    self.class.all << self 
  end

  def self.all #returns array of all reviews
    @@all 
  end 
end