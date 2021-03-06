# Please copy/paste all three classes into this file to submit your solution!
#Environment file does not specify that all the models files are related nor is there a run file that does this so...
require_relative ../app/models/review.rb

class Customer
  attr_accessor :first_name, :last_name, :reviews
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.collect do |customer|
      "#{customer.first_name} #{customer.last_name}".detect do |c_full_name|
        c_full_name == name
      end
    end
    #for each customer, grab first name and last name in an array
    #join the two name arrays into one string value
    #look in all customers to detect a match for the first and last name, returns one instance
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.collect {|customer| "#{customer.first_name} #{customer.last_name}"}
    #collect first_name and last_name for each customer instance in an array
  end

  def add_review(restaurant, content)
    new_review = Review.new(restaurant, content)
    new_review.customer = self
    self.reviews << new_review
  end

end

# Customer.all
# should return all of the customers
# Customer.find_by_name(name)
# given a string of a full name, returns the first customer whose full name matches
# Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name
# Customer.all_names
# should return an array of all of the customer full names
# Customer#add_review(restaurant, content)
# given some content and a restaurant, creates a new review and associates it with that customer and that restaurant

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
