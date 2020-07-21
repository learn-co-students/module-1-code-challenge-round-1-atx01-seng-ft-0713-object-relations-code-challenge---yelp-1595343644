class Restaurant 
  #has many customers
  #has many reviews through customers
  attr_reader :name, :review

  @@all = []

  def initialize(name)
    @name = name
    @review = []
    save
  end

  def save
    @@all << self
  end

  


end
