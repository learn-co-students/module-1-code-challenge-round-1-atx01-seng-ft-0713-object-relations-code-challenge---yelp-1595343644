require 'pry'

class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
      Review.all.select do |reviews|
        reviews.restaurant == self
      end
  end

  
  def customers
    self.reviews.map do |reviews|
      reviews.uniq
    end

  end

  # here I'm trying to use .uniq on the previous code written in the reviews method, but doesn't work.


end
