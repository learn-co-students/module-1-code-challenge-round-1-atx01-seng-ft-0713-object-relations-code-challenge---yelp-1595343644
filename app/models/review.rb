class Review

    attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        self.class.all << self
        
    end

    def rating (restaurant)
        self.all do |reviews|
        end
            binding.pry
    end
    

    def customer(given_name, family_name)
       customer = Customer.new
    end

    def restaurant (name)
        restaurant = Restaurant.new
    end



    def self.all
        @@all
    end

  
end