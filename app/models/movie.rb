require 'pry'
class Movie
  attr_accessor :title

  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    # self.class.all << self
    @@all << self
  end

  def queue_items
    QueueItem.all.select {|x| x.movie == self}
  end

  def viewers
    a1 = QueueItem.all.select {|x| x.movie == self}
    a2 = a1.map {|x| x.viewer}
  end

  def ratings
    a3 = QueueItem.all.select {|x| x.movie == self}
    a4 = a3.map {|x1| x1.rating}
  end


  def movie_ratings_total #added to be a helper method for average_rating method
    x = self.ratings.size
  end

  def average_rating
  #   QueueItem.all.select {|x| x.movie.name == self}
  #   m_arr1.map {|x| x.rating}
  # m_ar2.sum
    #sum / m_arr1.map {|x| x.rating}.size

    # r_sum =  m_arr2.sum
    # r_size = m_arr2.size
    # r_avg = r_sum / r_size
  end


  def self.highest_rated
    average_rating
  end

end #end of class
