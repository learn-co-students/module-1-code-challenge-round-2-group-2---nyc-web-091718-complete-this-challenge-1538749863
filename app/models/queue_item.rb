class QueueItem

attr_accessor :viewer, :movie, :rating

  @@all = []

  def self.all
    @@all
  end

  def initialize(viewer, movie, rating = nil)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

end #end of class
