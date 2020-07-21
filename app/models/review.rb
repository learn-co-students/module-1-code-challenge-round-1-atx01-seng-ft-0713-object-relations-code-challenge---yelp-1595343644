class Review
    #belongs to restaurant through customers
    #belongs to customers
    attr_accessor :restaurant, :rating, :review, :customer
    @@all = []
  def initialize (customer, restaurant, rating = 0)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    save
    customer.review << self
    restaurant.review << self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end


end