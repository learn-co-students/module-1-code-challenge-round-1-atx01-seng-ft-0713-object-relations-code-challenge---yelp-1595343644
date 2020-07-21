class Customer
  attr_accessor :given_name, :family_name, :full_name
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


  #call upon reviews that match this customer name
  def restaurants
    array = Review.all.select {|reviews| reviews.customer == self }
  
    bindinng.pry
    
end

def add_review(resturant, rating)
Review.new(self, resturant, rating)
end

def num_reviews
 Review.all.select.count {|reviews| reviews.customer == self}
end

def self.find_by_name(full_name)
self.all.select {|customer_names| customer_names.full_name == full_name}
end

def self.find_all_by_given_name(name)
  result = self.all.select {|customer_names| customer_names.given_name == name}
end
end