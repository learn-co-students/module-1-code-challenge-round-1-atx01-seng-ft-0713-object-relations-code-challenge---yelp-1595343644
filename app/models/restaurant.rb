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
    unique = reviews.map do |review|
      review.customer
    end 
    unique.uniq
  end

  def average_star_rating 
    total = 0
    self.all.map do |review|
      total += review.rating
    end
    (total / self.all.length).round(2)
    end  


  end
