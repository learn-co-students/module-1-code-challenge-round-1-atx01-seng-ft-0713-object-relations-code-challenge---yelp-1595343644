class Customer
  attr_accessor :given_name, :family_name

  @@all=[]
  @@customer_restaurants=[]

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self.full_name
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def customer_restaurants
    @@customer_restaurants
  end

end
