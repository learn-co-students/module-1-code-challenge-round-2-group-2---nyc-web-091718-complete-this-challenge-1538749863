class QueueItem

  @@all = []

  attr_accessor :movie, :viewer, :rating

    def self.all
      @@all
    end


    def initialize(viewer, movie, rating = nil)
      @movie = movie
      @viewer = viewer
      @rating = rating


      @@all << self
    end







end
