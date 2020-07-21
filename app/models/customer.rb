class Customer
  #has many restaurant
  #has many review
  attr_accessor :given_name, :family_name
  attr_reader :review
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @review = []
    save
  end

  def save
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def num_reviews
    @review.count
  end

  def self.find_by_name(name)
    Customer.all.map do |customer|
      customer = name
      end 

end
