require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Movie.new("Avengers")
m2 = Movie.new("Star Wars")
m3 = Movie.new("Hitch")

v1 = Viewer.new("Bob")
v2 = Viewer.new("Sue")
v3 = Viewer.new("Alex")

q1 = QueueItem.new(v1, m1, 5)
q2 = QueueItem.new(v2, m2, 1)
q3 = QueueItem.new(v3, m2, 5)
q4 = QueueItem.new(v1, m2, 4)






# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
