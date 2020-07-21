class Customer

  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all 
    @@all
  end

  def cust_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    uniquetwo = self.cust_reviews.map do |review|
      review.restaurant
    end
    uniquetwo.uniq
  end

  def add_review(restaurant, rating)
    Review.new(restaurant, rating, self)
  end

  def num_reviews
    self.cust_reviews.count
  end

  def self.find_by_name(name)
    Customer.all.find do |first_match|
      first_match.full_name == name
   end
  end

  def self.find_all_by_given_name(name)
    Customer.all.select do |given|
      given.given_name == name
    end
  end



end
