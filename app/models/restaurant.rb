class Restaurant
  attr_reader :name, :review

  def initialize(name)
    @name = name
  end


  def reviews
    Review.all.select do |review|
      review.restaurant == self
end
end


def customers
    self.reviews.map do |reviews|
      reviews.customer
    end.uniq
end

def average_star_rating
  review_sum = reviews.sum do |review|
    review.rating
  end 
  review_sum / (reviews.count)
end

end
