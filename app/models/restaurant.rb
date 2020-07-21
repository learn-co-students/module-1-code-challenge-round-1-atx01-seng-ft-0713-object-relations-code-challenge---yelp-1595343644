class Restaurant
  attr_reader :name

  @@restaurant_reviews=[]
  @@restaurant_customers=[]

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def restaurant_reviews
    @@restaurant_reviews
  end

  def restaurant_customers
    @@restaurant_customers
  end

end
