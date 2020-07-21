class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
		restaurant_ratings = []
		Review.all.select do |review|
			restaurant_ratings << review.rating
		end
		restaurant_ratings.uniq
	end

	def customers
		customers_reviews = []
		Review.all.each do |customer_review|
			customers_reviews << customer_review.customer
		end
		customers_reviews.uniq
	end

	def average_star_rating
		rating_average = []
		Review.all.each do |reviews|
			rating_average << reviews.rating
		end
		rating_average.sum(0.0) / rating_average.length
	end

end
