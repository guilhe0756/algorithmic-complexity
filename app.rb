require './lib/timer'

#initialize timer
timer = Timer.new

#prepare the data
data_1 = []
(1..50000).each { |x| data_1.push(x)}
data_2 = []
(50001..100000).each { |x| data_2.push(x)}
data_3 = []
(100001..150000).each { |x| data_3.push(x)}
data_4 = []
(150001..200000).each { |x| data_4.push(x)}
data_5 = []
(200001..250000).each { |x| data_5.push(x)}
data_6 = []
(250001..300000).each { |x| data_6.push(x)}
data_7 = []
(300001..350000).each { |x| data_7.push(x)}
data_8 = []
(350001..400000).each { |x| data_8.push(x)}
data_9 = []
(400001..450000).each { |x| data_9.push(x)}
data_10 = []
(450001..500000).each { |x| data_10.push(x)}

data_set = [
  data_1,
  data_3,
  data_3,
  data_4,
  data_5,
  data_6,
  data_7,
  data_8,
  data_9,
  data_10,
]

# run timer for each data set for each function
data_set.each do |data|
  timer.timed_function("last")
  timer.run
  data.last
  timer.stop
end

#puts end of test to create a visual separation between each test
puts "Finished testing with last"
puts "\n"

data_set.each do |data|
  timer.timed_function("shuffle")
  timer.run
  data.shuffle
  timer.stop
end

puts "Finished testing with shuffle"
puts "\n"

data_set.each do |data|
  timer.timed_function("reverse")
  timer.run
  data.reverse
  timer.stop
end

puts "Finished testing with reverse"
puts "\n"
