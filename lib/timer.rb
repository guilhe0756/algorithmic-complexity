class Timer

  def run
    @start_time = Time.new
  end

  def stop
    time = Time.new
    # time is display with minute:second:microsecond (6 digits)
    @result = [
      "Started: #{@start_time.strftime("%M:%S,%6N")}",
      "Stopped: #{time.strftime("%M:%S,%6N")}",
      "Took #{time - @start_time} seconds"
    ]
  end

  def result
    @result.dup
  end

  def last(data)
    data[-1]
  end

  def reverse(data)
    reversed = []
    until data.count.zero? do
      reversed << data.pop
    end
    reversed
  end

  def shuffle(data)
    shuffled_array = []
    until data.count.zero? do
      random_number = rand(0..data.count - 1)
      random_element = data.delete_at(random_number)
      shuffled_array << random_element
    end
    shuffled_array
  end
end
