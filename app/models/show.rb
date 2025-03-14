require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    m = Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.where(rating: Show.highest_rating)[0]
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    show = Show.where(rating: Show.lowest_rating)[0]
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
     shows = Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order("name ASC")
  end
end
