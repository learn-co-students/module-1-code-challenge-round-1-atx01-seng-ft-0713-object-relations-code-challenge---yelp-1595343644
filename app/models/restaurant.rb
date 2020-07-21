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
    customers = [] 
    Review.all.select do |review|
      if review.restaurant == self 
        customers << review.customer
      end
    end
    customers.uniq 
  end

  def average_star_rating 
    review_sum = reviews.sum do |review|
        review.rating 
    end
    review_sum / self.reviews.count  
  end


end





