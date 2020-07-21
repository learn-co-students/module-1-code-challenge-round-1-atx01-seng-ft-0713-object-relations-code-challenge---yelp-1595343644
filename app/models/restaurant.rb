

class Restaurant

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    reviews.map {|review| review.rating.to_f}.sum/reviews.length
  end

end
