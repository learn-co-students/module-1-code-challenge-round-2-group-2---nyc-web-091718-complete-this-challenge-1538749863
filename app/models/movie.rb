class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select {|qi| qi.movie == self}
  end

  def viewers
      self.queue_items.map {|qi| qi.viewer}
  end

  def average_rating
    #get sum of movie instance
    #divide sum by COUNT
    rating_array = self.queue_items.map {|qi| qi.rating}
    rating_array.reduce(:+).to_f / rating_array.count
  end

  def self.highest_rated
    #return instance of movie with highest rating
    #use average_rating instance method for all movies
    #return movie with highest average rating
    #queueitems has all the relations with ratings
    rating_array = self.all.map {|movie| movie.average_rating}
    highest_rating = rating_array.max
    found_highest = self.all.find {|movie| movie.average_rating == highest_rating}
  end

end
