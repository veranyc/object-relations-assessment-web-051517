#Environment file does not specify that all the models files are related nor is there a run file that does this so...
require_relative ../app/models/restaurant.rb
require_relative ../app/models/customer.rb

class Review
  attr_accessor :restaurant, :content, :customer
  @@all = []

def initialize(restaurant, content)
  @restaurant = restaurant
  @content = content
  @customer = nil
  @@all << self
end

def self.all
  @@all
end

def customer
  self.customer
end

def restaurant
  self.review
end

end


# Review.all
# returns all of the reviews
# Review#customer
# returns the customer for that given review
# Review#restaurant
# returns the restaurant for that given review
