require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Venom")
m2 = Movie.new("CRA")
m3 = Movie.new("MI")
m4 = Movie.new("Nun")

v1 = Viewer.new("asc")
v2 = Viewer.new("mj")

qi1 = QueueItem.new(v1, m1, 2)
qi2 = QueueItem.new(v1, m2, 3)
qi3 = QueueItem.new(v2, m3, 4)
qi4 = QueueItem.new(v2, m4, 1)
qi5 = QueueItem.new(v2, m2, 5)

qi1.rating = 2

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
