class Customer
  attr_accessor :given_name, :family_name #returns given and family name, read-write
  @@all = []

  def initialize(given_name, family_name) #initializes with given and family name
    @given_name = given_name
    @family_name  = family_name
    self.class.all << self 
  end

  def full_name # returns the full name of the customer, with the given name and the family name concatenated, Western style
    "#{given_name} #{family_name}"
  end

  def self.all #returns **all** of the customer instances
    @@all
  end

  def reviews #helper method to return array of all reviews made by a customer
    Review.all.select {|review| review.customer == self}
  end

  def restaurants #returns unique array of all restaurants a customer has reviewed
    rstaurants = reviews.map {|review| review.restaurant}
    rstaurants.uniq 
  end

  def add_review(restaurant, rating) # creates a new review and associates it with that customer and restaurant
    Review.new(restaurant, rating, self)
  end 

  def num_reviews #returns number of reviews a customer has authored
    reviews.count
  end

  def self.find_by_name(full_name) # returns first customer whose full name matches given argument
    self.all.find {|custs| custs.full_name == full_name}
  end

  def self.find_all_by_given_name(given_name) #r returns array of all customers that match argument "given_name"
    self.all.select {|custs| custs.given_name == given_name}
  end
end
