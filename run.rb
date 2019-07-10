require './lib/timer'

# initialize timer
timer = Timer.new

# prepare the data
data_1 = []
(1..5_000).each { |x| data_1.push(x) }
data_2 = []
(1..10_000).each { |x| data_2.push(x) }
data_3 = []
(1..15_000).each { |x| data_3.push(x) }
data_4 = []
(1..20_000).each { |x| data_4.push(x) }
data_5 = []
(1..25_000).each { |x| data_5.push(x) }
data_6 = []
(1..30_000).each { |x| data_6.push(x) }
data_7 = []
(1..35_000).each { |x| data_7.push(x) }
data_8 = []
(1..40_000).each { |x| data_8.push(x) }
data_9 = []
(1..45_000).each { |x| data_9.push(x) }
data_10 = []
(1..50_000).each { |x| data_10.push(x) }
data_11 = []
(1..55_000).each { |x| data_1.push(x) }
data_12 = []
(1..60_000).each { |x| data_2.push(x) }
data_13 = []
(1..65_000).each { |x| data_3.push(x) }
data_14 = []
(1..70_000).each { |x| data_4.push(x) }
data_15 = []
(1..75_000).each { |x| data_5.push(x) }
data_16 = []
(1..80_000).each { |x| data_6.push(x) }
data_17 = []
(1..85_000).each { |x| data_7.push(x) }
data_18 = []
(1..90_000).each { |x| data_8.push(x) }
data_19 = []
(1..95_000).each { |x| data_9.push(x) }
data_20 = []
(1..100_000).each { |x| data_10.push(x) }

data_set = [
  data_1,
  data_2,
  data_3,
  data_4,
  data_5,
  data_6,
  data_7,
  data_8,
  data_9,
  data_10,
  data_11,
  data_12,
  data_13,
  data_14,
  data_15,
  data_16,
  data_17,
  data_18,
  data_19,
  data_20,

]

# run timer for each data set for each function
data_set.each do |data|
  timer.timed_function("last")
  timer.run
  timer.last(data)
  timer.stop
end

# puts end of test to create a visual separation between each test
puts "Finished testing with last"
puts "\n"

data_set.each do |data|
  timer.timed_function("reverse")
  timer.run
  timer.reverse(data)
  timer.stop
end

puts "Finished testing with reverse"
puts "\n"

data_set.each do |data|
  timer.timed_function("shuffle")
  timer.run
  timer.shuffle(data)
  timer.stop
end

puts "Finished testing with shuffle"
puts "\n"
