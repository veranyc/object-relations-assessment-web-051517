#Environment file does not specify that all the models files are related nor is there a run file that does this so...
require_relative ../app/models/review.rb

class Restaurant
  attr_accessor :name, :reviews, :customers
  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @customers = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect {|restaurant| restaurant.name == name}
  end

  def reviews
    self.reviews
  end

  def customers
    self.customers
  end

end


# Restaurant.all
# returns an array of all restaurants
# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant that matches
# Restaurant#reviews
# returns an array of all reviews for that restaurant
# Restaurant#customers
# should return all of the customers who have written reviews of that restaurant.
