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
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    ratings_array = self.reviews.map do |review|
      review.rating
    end
    ratings_array.sum.to_f/ratings_array.count.to_f
  end

end
