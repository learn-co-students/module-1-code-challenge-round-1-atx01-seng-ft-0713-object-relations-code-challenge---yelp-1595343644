require 'pry'
class Customer
  attr_accessor :given_name, :family_name

  @@all = [ ]


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
  
  # The code below is meant to provide a unique array, but I returned the whole array. Can't figure out how 
  # to get the .uniq method to work. Also tried using pry, but would not let me jump into the enumerable.
  # ---------------------
  # def restaurants
  #   Review.all.select do |reviews|
  #     reviews.customer == self
  #   end
  # end
  # ---------------------

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  # def num_reviewed
  #   @@all.select do |customers|
  #     customers == self
  #   end.length
  # end

  
  
end
