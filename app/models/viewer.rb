class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    # self.class.all << self
    @@all = self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select {|x| x.viewer == self}
  end

  def movies
    a1 = QueueItem.all.select {|x| x.viewer == self}
    a2 = a1.map {|x| x.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  


end #end of class
