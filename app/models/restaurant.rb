require 'pry'

class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end 
  end 

  def customers
    all_reviews = self.reviews

    all_reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    sum = 0

    all_reviews = self.reviews
    
    all_ratings = all_reviews.map do |review|
      review.rating
    end 
    
    all_ratings.each do |i|
      sum += i
    end 

    sum / all_ratings.count
  end 
end

