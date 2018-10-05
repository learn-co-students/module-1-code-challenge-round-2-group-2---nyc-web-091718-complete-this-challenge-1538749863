require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


v1 = Viewer.new("v1")
v2 = Viewer.new("v2")
v3 = Viewer.new("v3")
v4 = Viewer.new("v4")


m1 = Movie.new("m1")
m2 = Movie.new("m2")
m3 = Movie.new("m3")
m4 = Movie.new("m4")

q1 = QueueItem.new(v1, m1)
q2 = QueueItem.new(v1, m2)
q3 = QueueItem.new(v2, m3)
q4 = QueueItem.new(v3, m4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
