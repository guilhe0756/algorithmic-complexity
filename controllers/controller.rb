require_relative '../lib/timer'

class Controller
  # initialize timer
  def initialize(timer_class: Timer)
    @timer_class = timer_class
    @data_set = []
  end

  def load_timer
    @timer = Timer.new
  end

  # prepare the data
  def prepare_data
    @data_1 = []
    (1..5_000).each { |x| @data_1.push(x) }
    @data_2 = []
    (1..10_000).each { |x| @data_2.push(x) }
    @data_3 = []
    (1..15_000).each { |x| @data_3.push(x) }
    @data_4 = []
    (1..20_000).each { |x| @data_4.push(x) }
    @data_5 = []
    (1..25_000).each { |x| @data_5.push(x) }
    @data_6 = []
    (1..30_000).each { |x| @data_6.push(x) }
    @data_7 = []
    (1..35_000).each { |x| @data_7.push(x) }
    @data_8 = []
    (1..40_000).each { |x| @data_8.push(x) }
    @data_9 = []
    (1..45_000).each { |x| @data_9.push(x) }
    @data_10 = []
    (1..50_000).each { |x| @data_10.push(x) }
    @data_11 = []
    (1..55_000).each { |x| @data_11.push(x) }
    @data_12 = []
    (1..60_000).each { |x| @data_12.push(x) }
    @data_13 = []
    (1..65_000).each { |x| @data_13.push(x) }
    @data_14 = []
    (1..70_000).each { |x| @data_14.push(x) }
    @data_15 = []
    (1..75_000).each { |x| @data_15.push(x) }
    @data_16 = []
    (1..80_000).each { |x| @data_16.push(x) }
    @data_17 = []
    (1..85_000).each { |x| @data_17.push(x) }
    @data_18 = []
    (1..90_000).each { |x| @data_18.push(x) }
    @data_19 = []
    (1..95_000).each { |x| @data_19.push(x) }
    @data_20 = []
    (1..100_000).each { |x| @data_20.push(x) }
  end

  def gather_data
    @data_set = []
    @data_set.push(@data_1)
    @data_set.push(@data_2)
    @data_set.push(@data_3)
    @data_set.push(@data_4)
    @data_set.push(@data_5)
    @data_set.push(@data_6)
    @data_set.push(@data_7)
    @data_set.push(@data_8)
    @data_set.push(@data_9)
    @data_set.push(@data_10)
    @data_set.push(@data_11)
    @data_set.push(@data_12)
    @data_set.push(@data_13)
    @data_set.push(@data_14)
    @data_set.push(@data_15)
    @data_set.push(@data_16)
    @data_set.push(@data_17)
    @data_set.push(@data_18)
    @data_set.push(@data_19)
    @data_set.push(@data_20)
  end

  # run timer for each data set for each function
  def run_last
    prepare_data
    gather_data

    @result_last = []
    @data_ranges = []
    @aggregated_result = []

    @data_set.each do |data|
      @timer.run
      @timer.last(data)
      @timer.stop
      @result_last.push(@timer.result)
      @data_ranges.push([data[0], data[-1]])
    end

    @aggregated_result = [@data_ranges, @result_last]
  end

  def run_reverse
    prepare_data
    gather_data

    @result_reverse = []
    @data_ranges = []
    @aggregated_result = []

    @data_set.each do |data|
      @data_ranges.push([data[0], data[-1]])
      @timer.run
      @timer.reverse(data)
      @timer.stop
      @result_reverse.push(@timer.result)
    end

    @aggregated_result = [@data_ranges, @result_reverse]
  end

  def run_shuffle
    prepare_data
    gather_data
    
    @result_shuffle = []
    @data_ranges = []
    @aggregated_result = []

    @data_set.each do |data|
      p data[0]
      p data[-1]
      @data_ranges.push([data[0], data[-1]])
      @timer.run
      @timer.shuffle(data)
      @timer.stop
      @result_shuffle.push(@timer.result)
    end

    @aggregated_result = [@data_ranges, @result_shuffle]
  end
end
