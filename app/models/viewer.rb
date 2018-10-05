class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select {|qi| qi.viewer == self}
  end

  def queue_movies
    self.queue_items.map {|qi| qi.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie, rating=nil)
    #rating will be nil
  end

  # def rate_movie(movie, rating)
  #   #if queue_movies does not contain movie
  #   #then call add_movie_to_queue passing the movie argument
  #   #else assign rating 1-5 to viewers queueitem for that movie
  #   if self.movie == nil
  #     self.add_movie_to_queue(self, movie, rating)
  #   else
  #     self.items.find {|movies| movies == movie}
  #     movie.rating = rating
  # end


end
