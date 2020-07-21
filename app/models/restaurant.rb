class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review| 
      review.restaurant==self
    end 
  end 

  def customers 
    reviews.map do |review| 
      review.customer
    end.uniq
  end 

  def average_star_rating
    total=reviews.sum do |review| 
      review.rating 
    end
    total.to_f/reviews.length.to_f
  end 

end
