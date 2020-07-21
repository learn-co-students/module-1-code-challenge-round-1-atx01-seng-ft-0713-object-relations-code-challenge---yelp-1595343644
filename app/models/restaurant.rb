class Restaurant
  attr_reader :name #returns restaurant name, read-only
  
  def initialize(name) #initializes with name as string
    @name = name
    #self.class.all << self
  end

  def reviews #returns array of all reviews for given restaurant 
    Review.all.select {|review| review.restaurant == self}
  end

  def customers #returns unique array of all customers who've reviewed a given restaurant
    customrs = reviews.map {|review| review.customer}
    customrs.uniq
  end 

  def average_star_rating #returns average star rating for restaurant 
    ratings_total = reviews.sum {|review| review.rating}
    num_ratings = reviews.count
    avg = ratings_total.to_f / num_ratings.to_f
    avg 
  end

end
