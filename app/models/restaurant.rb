class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end


  #create a collection of the reviews that have the same name as the resturant instance that the method is called upon
  #arlos => "all reviews"
def reviews
  Review.all.select {|reviews| reviews.restaurant == self }
end

def customers
  #I am tring to match the customer instance variable that is == the customer name attached to a review
  
end

#isolate the ratings in the reviews attached to this resturant instance
#add said ratings together 
#divide by total 
def average_star_rating
  
  binding.pry
  


  #result => num
end

end
