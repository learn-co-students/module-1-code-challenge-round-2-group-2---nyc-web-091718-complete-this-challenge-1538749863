class QueueItem

  attr_accessor :viewer, :movie, :rating

  @@all = []

  def initialize(viewer, movie, rating=nil)
    @viewer = viewer
    @movie = movie
    @rating = rating # if rating > 0 && rating < 6
    self.class.all << self
  end

  def self.all
    @@all
  end

end
