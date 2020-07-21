class Review
    attr_accessor :restaurant, :rating
    attr_reader :customer
    @@all= []
         
    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating.to_i
        self.class.all << self
    end

    def self.all
        @@all
    end

    def customer
        @customer
    end

    def restaurant
        @restaurant
    end

end

