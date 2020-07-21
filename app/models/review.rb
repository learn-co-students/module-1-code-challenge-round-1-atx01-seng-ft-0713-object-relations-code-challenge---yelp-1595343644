class Review

    attr_reader :customer, :rating
    
    @@all_reviews=[]

    def initialize(customer, restaurant, rating)
        @customer=customer
        @restaurant=restaurant
        @rating=rating

        restaurant.restaurant_reviews << rating
        restaurant.restaurant_customers << customer
        customer.customer_restaurants << restaurant
    end

    def review_rating
        @rating
    end

    def all
        @@all_reviews
    end

    def review_customer
        @customer
    end

    def review_restaurant
        @restaurant
    end

end