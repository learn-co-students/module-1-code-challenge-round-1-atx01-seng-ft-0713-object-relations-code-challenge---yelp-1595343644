class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
  	@@all
  end

  def restaurants
  	restaurants_customer_reviews = []
  	Review.all.each do |review|
  		restaurants_customer_reviews << review.restaurant
  	end
  	restaurants_customer_reviews.uniq
  end

  def add_review(restaurant, rating)
  	Review.new(self, restaurant, rating)
  end

  def num_reviews
  	restaurants.count
  end

  def self.find_by_name(name)
  	self.all.select do |names|
  		names.full_name == name
  	end
  end

  def self.find_all_by_given_name(name)
  	self.all.select do |names|
  		names.given_name == name
  	end
  end

end
